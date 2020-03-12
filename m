Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F464183D0E
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 00:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:To:From:
	Date:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3+UawmGN7I5I8Ph2ocZ/1Jy+AOV9z9bNKeS457oimI8=; b=j6dDfLmw/1YxpH
	X1PemdxvMMlo7rzq+dhcWG1jTj6bGm2YP4xCHd2iiyYynSEJgquMGkKn4P5vslE5r2miPVVWVp7w6
	l/paCxEXHVFPqFm8ga2507/5r6GG4zAbs+gCvPt2EfscEQmxGrkTv/JOw6NWGy/mabF9vhdbWK+PH
	1eNhCJOXSELr4wPVGb9K1yQ8ul+AOW4WOoYk9COsrXNSBa5G5nDQwzhmoR0sPrU3r0ejOhZQcBj5f
	IJyRGHL67TxjEZ+indg7r6DIJTBqtupYo9KVcPAdDjfkmd62bFQmdT9EZ9UOBa1afOZzWKohXd0M8
	CDKzYdkiFvRqIYKg+MVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWxU-0004dW-Bj; Thu, 12 Mar 2020 23:09:44 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWxL-0004d3-3o
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 23:09:37 +0000
Received: from localhost (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 663B8240004;
 Thu, 12 Mar 2020 23:09:28 +0000 (UTC)
In-Reply-To: <20200312225541.2213384-1-mail@aparcar.org>
Date: Thu, 12 Mar 2020 13:04:32 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: "Paul Spooren" <mail@aparcar.org>, <openwrt-devel@lists.openwrt.org>
Message-Id: <C198DIWS2EC3.25M85XNFCLTOW@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_160935_430997_CBAA88A1 
X-CRM114-Status: GOOD (  27.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v6] build: refactor JSON info files to
 `profiles.json`
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu Mar 12, 2020 at 2:55 AM PST, Paul Spooren wrote:
> JSON info files contain machine readable information of built profiles
> and resulting images. These files where added via 881ed09ee6e2. They are
> useful for firmware wizards and script checking for reproducibility.
>
> Currently all JSON files are stored next to the built images, resulting
> in up to 168 individual files for the ath79/generic target.
>
> This patch refactors the JSON creation to store individual per image
> (not per profile) files in $(BUILD_DIR)/json_info_files and create an
> single overview file called `profiles.json` in the target directory.
>
> Storing per image files and not per profile solves the problem of
> parallel file writes. If a profiles sysupgrade and factory image are
> finished at the same time both processes would write to the same JSON
> file, resulting in randomly broken outputs.
>
> Some target like x86/64 do not use the image code yet, resulting in
> missing JSON files. If no JSON info files were created, no
> `profiles.json` files is created as it would be empty anyway.
>
> As before, this creation is enabled by default only if `BUILDBOT` is
> set.
>
> Tested via buildroot & ImageBuilder on ath79/generic, imx6 and x86/64.
>
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> v2:
> * One instead of three CONFIG options
> * Only created `profiles.json` without copying individual JSON files
> * Add merging functionality to ImageBuilder
> * Use underscores in Makefile function name
> * Fix wrong `rm -f` path (missing /tmp)
> * Use `pathlib` instead of `json.dump`
> * use `os.getenv` from Python stdlib
> * remove "generic" subtarget fallback as it is implement in image.mk
>
> v3:
> * cleaned leftover `select JSON_CREATE_IMAGE_INFO`
> * rename `version_number` to `version_code`
>
> v4:
> * remove .IGNORE and prevent `cp` from failing if image not created
> * create JSON files on image basis instead of per profile to prevent
> parrallel file writes
> * use work dir at $(BUILD_DIR)/json_info_files instead of $(KDIR)
> * don't create profiles.json if target not JSON compatible (like x86)
>
> v5:
> * Use targets for JSON files so `make` knows which files are written
>
> v6:
> * Use $$@ for json_add_image_info.py
> * Old order for define Device/Build/image
> * Clean copy&paste json_overview_image_info calls in Makefiles
>
> Makefile | 9 ++++
> config/Config-build.in | 9 ++--
> include/image.mk | 12 +++--
> scripts/json_add_image_info.py | 75 +++++++++++++++++------------
> scripts/json_overview_image_info.py | 39 +++++++++++++++
> target/imagebuilder/files/Makefile | 10 ++++
> 6 files changed, 113 insertions(+), 41 deletions(-)
> create mode 100755 scripts/json_overview_image_info.py
>
> diff --git a/Makefile b/Makefile
> index fd705a37ad..32c050bb48 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -88,6 +88,14 @@ prereq: $(target/stamp-prereq) tmp/.prereq_packages
> exit 1; \
> fi
>  
> +$(BIN_DIR)/profiles.json: FORCE
> + $(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO), \
> + WORK_DIR=$(BUILD_DIR)/json_info_files \
> + $(SCRIPT_DIR)/json_overview_image_info.py $@ \
> + )
> +
> +json_overview_image_info: $(BIN_DIR)/profiles.json
> +
> checksum: FORCE
> $(call sha256sums,$(BIN_DIR),$(CONFIG_BUILDBOT))
>  
> @@ -109,6 +117,7 @@ prepare: .config $(tools/stamp-compile)
> $(toolchain/stamp-compile)
>  
> world: prepare $(target/stamp-compile) $(package/stamp-compile)
> $(package/stamp-install) $(target/stamp-install) FORCE
> $(_SINGLE)$(SUBMAKE) -r package/index
> + $(_SINGLE)$(SUBMAKE) -r json_overview_image_info
> $(_SINGLE)$(SUBMAKE) -r checksum
>  
> .PHONY: clean dirclean prereq prepare world package/symlinks
> package/symlinks-install package/symlinks-clean
> diff --git a/config/Config-build.in b/config/Config-build.in
> index 6a6fb2882c..61a9265ad7 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -7,12 +7,13 @@
>  
> menu "Global build settings"
>  
> - config JSON_ADD_IMAGE_INFO
> - bool "Create JSON info files per build image"
> + config JSON_OVERVIEW_IMAGE_INFO
> + bool "Create JSON info file overview per target"
> default BUILDBOT
> help
> - The JSON info files contain information about the device and
> - build images, stored next to the firmware images.
> + Create a JSON info file called profiles.json in the target
> + directory containing machine readable list of built profiles
> + and resulting images.
>  
> config ALL_NONSHARED
> bool "Select all target specific packages by default"
> diff --git a/include/image.mk b/include/image.mk
> index 2436b94f81..d1c63bba29 100644
> --- a/include/image.mk
> +++ b/include/image.mk
> @@ -545,8 +545,9 @@ endef
>  
> define Device/Build/image
> GZ_SUFFIX := $(if $(filter %dtb %gz,$(2)),,$(if $(and $(findstring
> ext4,$(1)),$(CONFIG_TARGET_IMAGES_GZIP)),.gz))
> - $$(_TARGET): $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2))$$(GZ_SUFFIX)
> + $$(_TARGET): $(BUILD_DIR)/json_info_files/$(call
> IMAGE_NAME,$(1),$(2)).json

I tried to replace this via JSON_INFO_FILE but to use a variable but
either := nor = work. It seems as if the variables are not expanding,
so only some but not all JSON files are created. However it is only used
twice, so an extra variable is maybe not required.

> $(eval $(call Device/Export,$(KDIR)/tmp/$(call
> IMAGE_NAME,$(1),$(2)),$(1)))
> +
> ROOTFS/$(1)/$(3) := \
> $(KDIR)/root.$(1)$$(strip \
> $$(if $$(FS_OPTIONS/$(1)),+fs=$$(call param_mangle,$$(FS_OPTIONS/$(1))))
> \
> @@ -568,7 +569,9 @@ define Device/Build/image
>  
> $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call
> IMAGE_NAME,$(1),$(2))
> cp $$^ $$@
> - $(if $(CONFIG_JSON_ADD_IMAGE_INFO), \
> +
> + $(BUILD_DIR)/json_info_files/$(call IMAGE_NAME,$(1),$(2)).json:
> $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2))$$(GZ_SUFFIX)
> + $(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO), \
> DEVICE_ID="$(DEVICE_NAME)" \
> BIN_DIR="$(BIN_DIR)" \
> IMAGE_NAME="$(IMAGE_NAME)" \
> @@ -592,7 +595,7 @@ define Device/Build/image
> VERSION_NUMBER="$(VERSION_NUMBER)" \
> VERSION_CODE="$(VERSION_CODE)" \
> SUPPORTED_DEVICES="$(SUPPORTED_DEVICES)" \
> - $(TOPDIR)/scripts/json_add_image_info.py \
> + $(TOPDIR)/scripts/json_add_image_info.py $$@ \
> )
>  
> endef
> @@ -612,8 +615,6 @@ define Device/Build/artifact
> endef
>  
> define Device/Build
> - $(shell rm -f $(BIN_DIR)/$(IMG_PREFIX)-$(1).json)
> -
> $(if $(CONFIG_TARGET_ROOTFS_INITRAMFS),$(call
> Device/Build/initramfs,$(1)))
> $(call Device/Build/kernel,$(1))
>  
> @@ -699,6 +700,7 @@ define BuildImage
>  
> image_prepare: compile
> mkdir -p $(BIN_DIR) $(KDIR)/tmp
> + rm -rf $(BUILD_DIR)/json_info_files/
> $(call Image/Prepare)
>  
> legacy-images-prepare-make: image_prepare
> diff --git a/scripts/json_add_image_info.py
> b/scripts/json_add_image_info.py
> index 44b4031f85..49455b86d1 100755
> --- a/scripts/json_add_image_info.py
> +++ b/scripts/json_add_image_info.py
> @@ -1,18 +1,25 @@
> #!/usr/bin/env python3
>  
> -import json
> -import os
> +from os import getenv
> +from pathlib import Path
> +from sys import argv
> import hashlib
> +import json
>  
> +if len(argv) != 2:
> + print("ERROR: JSON info script requires output arg")
> + exit(1)
>  
> -def e(variable, default=None):
> - return os.environ.get(variable, default)
> -
> +json_path = Path(argv[1])
> +if not json_path.parent.is_dir():
> + json_path.parent.mkdir(parents=True)
>  
> -json_path = "{}{}{}.json".format(e("BIN_DIR"), os.sep,
> e("IMAGE_PREFIX"))
> +bin_dir = Path(getenv("BIN_DIR"))
> +image_file = bin_dir / getenv("IMAGE_NAME")
>  
> -with open(os.path.join(e("BIN_DIR"), e("IMAGE_NAME")), "rb") as
> image_file:
> - image_hash = hashlib.sha256(image_file.read()).hexdigest()
> +if not image_file.is_file():
> + print("Skip JSON creation for non existing image ", image_file)
> + exit(0)
>  
>  
> def get_titles():
> @@ -20,36 +27,40 @@ def get_titles():
> for prefix in ["", "ALT0_", "ALT1_", "ALT2_"]:
> title = {}
> for var in ["vendor", "model", "variant"]:
> - if e("DEVICE_{}{}".format(prefix, var.upper())):
> - title[var] = e("DEVICE_{}{}".format(prefix, var.upper()))
> + if getenv("DEVICE_{}{}".format(prefix, var.upper())):
> + title[var] = getenv("DEVICE_{}{}".format(prefix, var.upper()))
>  
> if title:
> titles.append(title)
>  
> if not titles:
> - titles.append({"title": e("DEVICE_TITLE")})
> + titles.append({"title": getenv("DEVICE_TITLE")})
>  
> return titles
>  
>  
> -if not os.path.exists(json_path):
> - device_info = {
> - "id": e("DEVICE_ID"),
> - "image_prefix": e("IMAGE_PREFIX"),
> - "images": [],
> - "metadata_version": 1,
> - "supported_devices": e("SUPPORTED_DEVICES").split(),
> - "target": "{}/{}".format(e("TARGET"), e("SUBTARGET", "generic")),
> - "titles": get_titles(),
> - "version_commit": e("VERSION_CODE"),
> - "version_number": e("VERSION_NUMBER"),
> - }
> -else:
> - with open(json_path, "r") as json_file:
> - device_info = json.load(json_file)
> -
> -image_info = {"type": e("IMAGE_TYPE"), "name": e("IMAGE_NAME"),
> "sha256": image_hash}

Currently the JSON image dicts contain type, name and sha256sum. It
would also be possible to only contain type, filesystem, suffix and
sha256sum as `image_prefix` is also supplied. This way the filename
could be determined via <image_suffix>-<filesystem>-<type>.

> -device_info["images"].append(image_info)
> -
> -with open(json_path, "w") as json_file:
> - json.dump(device_info, json_file, sort_keys=True, indent=" ")
> +device_id = getenv("DEVICE_ID")
> +image_hash = hashlib.sha256(image_file.read_bytes()).hexdigest()
> +
> +image_info = {
> + "metadata_version": 1,
> + "target": "{}/{}".format(getenv("TARGET"), getenv("SUBTARGET")),
> + "version_code": getenv("VERSION_CODE"),
> + "version_number": getenv("VERSION_NUMBER"),
> + "profiles": {
> + device_id: {
> + "image_prefix": getenv("IMAGE_PREFIX"),
> + "images": [
> + {
> + "type": getenv("IMAGE_TYPE"),
> + "name": getenv("IMAGE_NAME"),
> + "sha256": image_hash,
> + }
> + ],
> + "supported_devices": getenv("SUPPORTED_DEVICES").split(),
> + "titles": get_titles(),
> + }
> + },
> +}
> +
> +json_path.write_text(json.dumps(image_info, separators=(",", ":")))
> diff --git a/scripts/json_overview_image_info.py
> b/scripts/json_overview_image_info.py
> new file mode 100755
> index 0000000000..5ed829249b
> --- /dev/null
> +++ b/scripts/json_overview_image_info.py
> @@ -0,0 +1,39 @@
> +#!/usr/bin/env python3
> +
> +import json
> +from pathlib import Path
> +from os import getenv
> +from sys import argv
> +
> +if len(argv) != 2:
> + print("JSON info files script requires ouput file as argument")
> + exit(1)
> +
> +output_path = Path(argv[1])
> +
> +assert getenv("WORK_DIR"), "$WORK_DIR required"
> +
> +work_dir = Path(getenv("WORK_DIR"))
> +
> +assert work_dir.is_dir(), "$WORK_DIR not a directory"
> +
> +output = {}
> +
> +for json_file in work_dir.glob("*.json"):
> + image_info = json.loads(json_file.read_text())
> + if not output:
> + output.update(image_info)
> + else:
> + # get first (and only) profile in json file
> + device_id = next(iter(image_info["profiles"].keys()))
> + if device_id not in output["profiles"]:
> + output["profiles"].update(image_info["profiles"])
> + else:
> + output["profiles"][device_id]["images"].append(
> + image_info["profiles"][device_id]["images"][0]
> + )
> +
> +if output:
> + output_path.write_text(json.dumps(output, sort_keys=True,
> separators=(",", ":")))
> +else:
> + print("JSON info file script could not find any JSON files for
> target")
> diff --git a/target/imagebuilder/files/Makefile
> b/target/imagebuilder/files/Makefile
> index 15b3d5c35c..835dd98ca5 100644
> --- a/target/imagebuilder/files/Makefile
> +++ b/target/imagebuilder/files/Makefile
> @@ -118,6 +118,7 @@ _call_image: staging_dir/host/.prereq-build
> $(MAKE) package_install
> $(MAKE) -s prepare_rootfs
> $(MAKE) -s build_image
> + $(MAKE) -s json_overview_image_info
> $(MAKE) -s checksum
>  
> _call_manifest: FORCE
> @@ -163,12 +164,21 @@ prepare_rootfs: FORCE
> $(CP) $(TARGET_DIR) $(TARGET_DIR_ORIG)
> $(call prepare_rootfs,$(TARGET_DIR),$(USER_FILES),$(DISABLED_SERVICES))
>  
> +
> build_image: FORCE
> @echo
> @echo Building images...
> $(NO_TRACE_MAKE) -C target/linux/$(BOARD)/image install TARGET_BUILD=1
> IB=1 EXTRA_IMAGE_NAME="$(EXTRA_IMAGE_NAME)" \
> $(if $(USER_PROFILE),PROFILE="$(USER_PROFILE)")
>  
> +$(BIN_DIR)/profiles.json: FORCE
> + $(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO), \
> + WORK_DIR=$(BUILD_DIR)/json_info_files \
> + $(SCRIPT_DIR)/json_overview_image_info.py $@ \
> + )
> +
> +json_overview_image_info: $(BIN_DIR)/profiles.json
> +
> checksum: FORCE
> @echo
> @echo Calculating checksums...
> --
> 2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
