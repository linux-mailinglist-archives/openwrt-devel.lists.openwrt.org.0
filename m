Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A673174D55
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:29:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7767o7WDBp4NcHPKvxXIQT8lHEnfqUw5ZYYK1Ant0vE=; b=EALtiVnalOQjE9
	CbYpVP8I/xVw/Kt8VUKB1ZTllTkDM+J85cypvRcbUXxb1bM2Wgv0BZJMTY+VR05qgdRVnTcCA5qjD
	jqLwPyeoy8kmR+6FuxpVErGUXWAuFc5649SN6F//rmQ+A2LeHL1Tzi9rwiG0dnPq6y2UIAbYeGsAl
	AsAVRVLClj4DAA20ApaWAMOCSLAYlx8eybEU6PNFtNDbKSFUh07DFpX0QxClLYx7hdP/AXb9SFW1H
	moTKuU2xCl+4A0/0QwzMLfGaD2hNV7TH2vcpfzfEMS+hxPGy/eyW/eL+BIphrUsaZeLrU/ky8TMK8
	BVrKR7PWt+UBEUSqzu3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Nis-0001Ee-1U; Sun, 01 Mar 2020 12:29:30 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Nij-0001E3-TD
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:29:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1583065757;
 bh=Y6FRue/KUyhBzmAYVC7QznFV21XdbjEgNqFFqGDzdWc=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=bIgJ3JBfN7BB69f50hoBHPubYX2iT2ISWAamoVJWXvzhsc0lROQ39ODQc7fQZIoJz
 ua0SAA5GCKK8rTjLLVMGKb5wPtOJjB2foTN5q9jgA4AgvrW0B83FLXQB/oEN3u0UJT
 flws0t9LqexuIjrcILfLq5udhhLFD1954BxijO60=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.111] ([91.3.164.59]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LqoAk-1jcVTD1xB4-00eNUG for
 <openwrt-devel@lists.openwrt.org>; Sun, 01 Mar 2020 13:29:17 +0100
To: openwrt-devel@lists.openwrt.org
References: <20200301024850.1528027-1-mail@aparcar.org>
From: Moritz Warning <moritzwarning@web.de>
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1c469a96-4a7f-a030-d4f4-c294e65a0f20@web.de>
Date: Sun, 1 Mar 2020 13:29:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200301024850.1528027-1-mail@aparcar.org>
Content-Language: en-US
X-Provags-ID: V03:K1:XQJDicBl2OLYV3hGkqdLaPEKgPFKuoq5o5y3pATJPSkJJnaHnmW
 Qw3fMoXO3WT1va/WnAqGkq/XXsdEZDccAkPZamXRT24+Px/7uW+0+G1AVPt7jv5VwE8H/nr
 cRdQ46T/IIKfxr956W4FvFH4/3kHXZAi4RdottIpdyfIzpUU3MNfeQ4M53NRgoRJvn8YgHy
 aCD7IHmTmf6Z6/+jnEjGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tPspZUSVvT8=:cjJ7MCb7WyOaHCRfjAeIwN
 QybLHVs59Uy85dF4CUI/XS9yjC2M/kYt1VqNBiKegxh3TuHy7rKknosNq2jkzN+ldEPKQ2dpR
 n5TfRCjElkGezsvlGs2o4PR1mspsfO2e5fkq/33ttlURgAiW6C3F4WsdIt+CTTKI+MoeRcoMC
 wG35Q8j0YYdkZQ2kDrL+SnpiffctOnEExrB9qVilmAigu66kL/liJLIq6uEaSRM+loxHVpiJK
 /umqkiXHcliwIk2BczvxyDjB4caRk1EpxOCqQOVMaT5VwryHhyOnxyRAuhpMS2GRsxwSJkfyU
 gMzX/c/3RyGreU8e3ugnq8otX/CiStgdZo2aAY3Ttt7xaZUJaxo2Ltb4e+FZgtxsgR43AbyIu
 UCQFoTpEJ8yyfEztAul6MR4nxAbN87PizE4bRoo26JSz+Qv0q7DjlY9ZIHqOVz3bBsXtPfZnW
 4fse8rlPlsJrycTzsvJE3rB0VEl5xakT/L3pk13q2KiMAKBSV7aaGAAQ9Er2UKu9oNwfV8Lln
 wvlhZ6Ihcf5ywOg9dmDPXpdUhtMApwEbqGPDAszJAYdqwF7ibMX52rM4z1HaIy55y6x647d6o
 uLlJFEIqOnljgt8GpH+0rbJDFQzJLzcdlV5n9kIprRrZfIq18ZJ+PFd5yI5ne0quqDCv/E7kb
 7QF5+yHe8LSSqntFpN/7G82lpmcn+cLNSNRXTmoJz4v69WRnzDKDHb4Aa74L6EB+JWwZMPJYY
 owHrNEvuGq7ysUAo1GgejXnLDG3982xwbczCOh/VxnrhFLAOpbqvFIBQLBegkLrCmot6niFsz
 9D9HVtmrMZ9C3Yp8MQcd0l6yd6T86aD5lvssf39KTigiCH2a6AqVSeH5NJji2bup2+BstfiA7
 kQ9yFUJ1l45qeA4H7g+WaDxY8Bkr9JkIGCJ4lID8+Ok/iBkcOGaimwrG2nxXLPjNM7Gcct1gj
 dGVnJopWc7qw+4yqDZlEFVYgbJGZ1czyS19DLeCJTRhiJvcw+xor4eJcwYZ96FmtLMWJ63AMb
 SMq2RLQZDL5zxCbbaI3MogmOGcU5GLsmCAsY7MJYhs+2evG1e6s4TaP6ixP4sw8Hq+nmSVznA
 rp0JbpQbliQAraZ1Sdn+p24WZypH5RcUz426c+t2pEukgeSHXbsZgPWUwh6ffP22zI42C5lu2
 sdMnAIgyDVoMmHbLtmKI4y3Ld8viUDg7eEtZWWXHDglpIfi2+IbdVYoJPwxxHosCds/dYJWgk
 X9o2llu/qCp4LI3Hb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042922_280996_28BF7E9C 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritzwarning[at]web.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: refactor JSON info files to
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Paul,

as I see it, there are now two JSON options:

- creates the single JSON files in the $(KDIR)/tmp folder
- create a per target overview JSON that contains nearly all data of the single JSON files

Questions:

- Why not only have one JSON menu option that create the one per target JSON file?
- The Python script puts variable VERSION_CODE (e.g. r12145-4716c843d6) into a JSON field called version_commit.
  It is probably better to use version_code, before it cannot be changed anymore.

On 3/1/20 3:48 AM, Paul Spooren wrote:
> JSON info files contain machine readable information of built profiles
> and resulting images. These files where added via 881ed09ee6e2. They are
> useful for firmware wizards and script checking for reproducibility.
>
> Currently all JSON files are stored next to the built images, resulting
> in up to 168 individual files for the ath79/generic target.
>
> This PR refactors the JSON creation to store individual files in
> $(KDIR)/tmp and create an single overview file called `profiles.json` in
> the target dir.
>
> As before, this creation is enabled by default only if `BUILDBOT` is set.
>
> The previous implementation used the functions `json.dumps()` which seem
> to have caused broken files. Now the `pathlib` library is used to deal
> with files and the `json` library only reads/writes into variables.
>
> Tested via buildroot & ImageBuilder on ath79/generic.
>
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> v2:
>   * One instead of three CONFIG options
>   * Only created `profiles.json` without copying individual JSON files
>   * Add merging functionality to ImageBuilder
>   * Use underscores in Makefile function name
>   * Fix wrong `rm -f` path (missing /tmp)
>   * Use `pathlib` instead of `json.dump`
>   * Use `os.getenv` from Python stdlib
>   * Remove "generic" subtarget fallback as it is implement in image.mk
>
>  Makefile                            |  6 ++++
>  config/Config-build.in              | 10 ++++---
>  include/image.mk                    |  6 ++--
>  scripts/json_add_image_info.py      | 45 ++++++++++++++---------------
>  scripts/json_overview_image_info.py | 33 +++++++++++++++++++++
>  target/imagebuilder/files/Makefile  |  7 +++++
>  6 files changed, 77 insertions(+), 30 deletions(-)
>  create mode 100755 scripts/json_overview_image_info.py
>
> diff --git a/Makefile b/Makefile
> index 181c33b180..b9f92babf6 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -96,6 +96,11 @@ buildversion: FORCE
>  feedsversion: FORCE
>  	$(SCRIPT_DIR)/feeds list -fs > $(BIN_DIR)/feeds.buildinfo
>
> +json_overview_image_info: FORCE
> +	INPUT_DIR=$(BUILD_DIR)/linux-$(BOARD)$(if $(SUBTARGET),_$(SUBTARGET))/tmp \
> +		TARGET_DIR=$(BIN_DIR) \
> +		$(SCRIPT_DIR)/json_overview_image_info.py
> +
>  diffconfig: FORCE
>  	mkdir -p $(BIN_DIR)
>  	$(SCRIPT_DIR)/diffconfig.sh > $(BIN_DIR)/config.buildinfo
> @@ -108,6 +113,7 @@ prepare: .config $(tools/stamp-compile) $(toolchain/stamp-compile)
>
>  world: prepare $(target/stamp-compile) $(package/stamp-compile) $(package/stamp-install) $(target/stamp-install) FORCE
>  	$(_SINGLE)$(SUBMAKE) -r package/index
> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO),$(_SINGLE)$(SUBMAKE) -r json_overview_image_info)
>  	$(_SINGLE)$(SUBMAKE) -r checksum
>
>  .PHONY: clean dirclean prereq prepare world package/symlinks package/symlinks-install package/symlinks-clean
> diff --git a/config/Config-build.in b/config/Config-build.in
> index 6a6fb2882c..57428399ab 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -7,12 +7,14 @@
>
>  menu "Global build settings"
>
> -	config JSON_ADD_IMAGE_INFO
> -		bool "Create JSON info files per build image"
> +	config JSON_OVERVIEW_IMAGE_INFO
> +		bool "Create JSON info file overview per target"
>  		default BUILDBOT
> +		select JSON_CREATE_IMAGE_INFO
>  		help
> -		  The JSON info files contain information about the device and
> -		  build images, stored next to the firmware images.
> +		  Create a JSON info file called profiles.json in the target
> +		  directory containing machine readable list of built profiles
> +		  and resulting images.
>
>  	config ALL_NONSHARED
>  		bool "Select all target specific packages by default"
> diff --git a/include/image.mk b/include/image.mk
> index fd04d4020b..933d844e8e 100644
> --- a/include/image.mk
> +++ b/include/image.mk
> @@ -568,9 +568,9 @@ define Device/Build/image
>
>    $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
>  	cp $$^ $$@
> -	$(if $(CONFIG_JSON_ADD_IMAGE_INFO), \
> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO), \
>  		DEVICE_ID="$(DEVICE_NAME)" \
> -		BIN_DIR="$(BIN_DIR)" \
> +		BIN_DIR="$(KDIR)/tmp" \
>  		IMAGE_NAME="$(IMAGE_NAME)" \
>  		IMAGE_TYPE=$(word 1,$(subst ., ,$(2))) \
>  		IMAGE_PREFIX="$(IMAGE_PREFIX)" \
> @@ -612,7 +612,7 @@ define Device/Build/artifact
>  endef
>
>  define Device/Build
> -  $(shell rm -f $(BIN_DIR)/$(IMG_PREFIX)-$(1).json)
> +  $(shell rm -f $(KDIR)/tmp/$(IMG_PREFIX)-$(1).json)
>
>    $(if $(CONFIG_TARGET_ROOTFS_INITRAMFS),$(call Device/Build/initramfs,$(1)))
>    $(call Device/Build/kernel,$(1))
> diff --git a/scripts/json_add_image_info.py b/scripts/json_add_image_info.py
> index 44b4031f85..c7f28a2183 100755
> --- a/scripts/json_add_image_info.py
> +++ b/scripts/json_add_image_info.py
> @@ -1,18 +1,15 @@
>  #!/usr/bin/env python3
>
>  import json
> -import os
> +from os import getenv
>  import hashlib
> +from pathlib import Path
>
> +bin_dir = Path(getenv("BIN_DIR"))
>
> -def e(variable, default=None):
> -    return os.environ.get(variable, default)
> +json_path = (bin_dir / getenv("IMAGE_PREFIX")).with_suffix(".json")
>
> -
> -json_path = "{}{}{}.json".format(e("BIN_DIR"), os.sep, e("IMAGE_PREFIX"))
> -
> -with open(os.path.join(e("BIN_DIR"), e("IMAGE_NAME")), "rb") as image_file:
> -    image_hash = hashlib.sha256(image_file.read()).hexdigest()
> +image_hash = hashlib.sha256((bin_dir / getenv("IMAGE_NAME")).read_bytes()).hexdigest()
>
>
>  def get_titles():
> @@ -20,36 +17,38 @@ def get_titles():
>      for prefix in ["", "ALT0_", "ALT1_", "ALT2_"]:
>          title = {}
>          for var in ["vendor", "model", "variant"]:
> -            if e("DEVICE_{}{}".format(prefix, var.upper())):
> -                title[var] = e("DEVICE_{}{}".format(prefix, var.upper()))
> +            if getenv("DEVICE_{}{}".format(prefix, var.upper())):
> +                title[var] = getenv("DEVICE_{}{}".format(prefix, var.upper()))
>
>          if title:
>              titles.append(title)
>
>      if not titles:
> -        titles.append({"title": e("DEVICE_TITLE")})
> +        titles.append({"title": getenv("DEVICE_TITLE")})
>
>      return titles
>
>
> -if not os.path.exists(json_path):
> +if not json_path.is_file():
>      device_info = {
> -        "id": e("DEVICE_ID"),
> -        "image_prefix": e("IMAGE_PREFIX"),
> +        "id": getenv("DEVICE_ID"),
> +        "image_prefix": getenv("IMAGE_PREFIX"),
>          "images": [],
>          "metadata_version": 1,
> -        "supported_devices": e("SUPPORTED_DEVICES").split(),
> -        "target": "{}/{}".format(e("TARGET"), e("SUBTARGET", "generic")),
> +        "supported_devices": getenv("SUPPORTED_DEVICES").split(),
> +        "target": "{}/{}".format(getenv("TARGET"), getenv("SUBTARGET")),
>          "titles": get_titles(),
> -        "version_commit": e("VERSION_CODE"),
> -        "version_number": e("VERSION_NUMBER"),
> +        "version_commit": getenv("VERSION_CODE"),
> +        "version_number": getenv("VERSION_NUMBER"),
>      }
>  else:
> -    with open(json_path, "r") as json_file:
> -        device_info = json.load(json_file)
> +    device_info = json.loads(json_path.read_text())
>
> -image_info = {"type": e("IMAGE_TYPE"), "name": e("IMAGE_NAME"), "sha256": image_hash}
> +image_info = {
> +    "type": getenv("IMAGE_TYPE"),
> +    "name": getenv("IMAGE_NAME"),
> +    "sha256": image_hash,
> +}
>  device_info["images"].append(image_info)
>
> -with open(json_path, "w") as json_file:
> -    json.dump(device_info, json_file, sort_keys=True, indent="  ")
> +json_path.write_text(json.dumps(device_info))
> diff --git a/scripts/json_overview_image_info.py b/scripts/json_overview_image_info.py
> new file mode 100755
> index 0000000000..bba13dd80c
> --- /dev/null
> +++ b/scripts/json_overview_image_info.py
> @@ -0,0 +1,33 @@
> +#!/usr/bin/env python3
> +
> +import json
> +from pathlib import Path
> +from os import getenv
> +
> +target_dir = Path(getenv("TARGET_DIR"))
> +input_dir = Path(getenv("INPUT_DIR", target_dir))
> +
> +output_json = {}
> +
> +assert target_dir, "Target directory required"
> +
> +for json_file in input_dir.glob("*.json"):
> +    profile_info = json.loads(json_file.read_text())
> +    if not output_json:
> +        output_json = {
> +            "metadata_version": 1,
> +            "target": profile_info["target"],
> +            "version_commit": profile_info["version_commit"],
> +            "version_number": profile_info["version_number"],
> +            "profiles": {},
> +        }
> +
> +    output_json["profiles"][profile_info["id"]] = {
> +        "supported_devices": profile_info["supported_devices"],
> +        "images": profile_info["images"],
> +        "titles": profile_info["titles"],
> +    }
> +
> +Path(target_dir / "profiles.json").write_text(
> +    json.dumps(output_json, sort_keys=True, indent="  ")
> +)
> diff --git a/target/imagebuilder/files/Makefile b/target/imagebuilder/files/Makefile
> index 15b3d5c35c..ed9e298636 100644
> --- a/target/imagebuilder/files/Makefile
> +++ b/target/imagebuilder/files/Makefile
> @@ -118,6 +118,7 @@ _call_image: staging_dir/host/.prereq-build
>  	$(MAKE) package_install
>  	$(MAKE) -s prepare_rootfs
>  	$(MAKE) -s build_image
> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO),$(_SINGLE)$(SUBMAKE) -r json_overview_image_info)
>  	$(MAKE) -s checksum
>
>  _call_manifest: FORCE
> @@ -163,12 +164,18 @@ prepare_rootfs: FORCE
>  	$(CP) $(TARGET_DIR) $(TARGET_DIR_ORIG)
>  	$(call prepare_rootfs,$(TARGET_DIR),$(USER_FILES),$(DISABLED_SERVICES))
>
> +
>  build_image: FORCE
>  	@echo
>  	@echo Building images...
>  	$(NO_TRACE_MAKE) -C target/linux/$(BOARD)/image install TARGET_BUILD=1 IB=1 EXTRA_IMAGE_NAME="$(EXTRA_IMAGE_NAME)" \
>  		$(if $(USER_PROFILE),PROFILE="$(USER_PROFILE)")
>
> +json_overview_image_info: FORCE
> +	INPUT_DIR=$(BUILD_DIR)/linux-$(BOARD)$(if $(SUBTARGET),_$(SUBTARGET))/tmp \
> +		TARGET_DIR=$(BIN_DIR) \
> +		$(SCRIPT_DIR)/json_overview_image_info.py
> +
>  checksum: FORCE
>  	@echo
>  	@echo Calculating checksums...
>


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
