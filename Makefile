.PHONY: clean refresh build

clean:
	@echo "Cleaning flutter..."
	fvm flutter clean
	@echo "Cleaning ios directory..."
	cd ios &&  rm -rf Podfile.lock
	cd ios &&  rm -rf Pods
	fvm flutter pub get
	fvm flutter precache --ios
	cd ios  && pod install

update_dependencies:
	@echo "Updating dependencies..."
	fvm flutter pub upgrade --major-versions
	@echo "Applying breaking changes ..."
	dart fix --apply


update_ios_repo:
	@echo "Updating repo..."
	cd ios && pod install --repo-update
