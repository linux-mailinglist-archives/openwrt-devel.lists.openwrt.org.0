Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD6017512D
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 01:03:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N8YsdNbx4MnNpy5BBRCz3YwZm58oStLXntksD/0nqLc=; b=BMdzXbm2dZIsSqguMlqyXhuGL
	FJ16784CKjKONqVn/7tdMq/YI3TXlm/gRdNzIZT6KW93WxUYjj0zTJ3toKsf0nn3xdd+W8idQ8jFJ
	H4VbCX1en+roolLCMR2gq4yParSabVt/y2lYa9LwWUN7UOT03v5xkg+SgGT68kgmQXw4M/HvRqA+b
	atWs/RQgUkxh5TF1S8+Q5AwyVWfwPDcrYbATbMB31kmRSUYRfhtuUG8+BvU3ICFVORBqSGctslePv
	ZtFXOKGcYY4C/rKdrzojaI6raY6xlshvZdLcAF5LmI64jkugM/6NyWZJ6NfJfxS8BPpyiYbaAEzIJ
	LbUeaeoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8YYc-0000zJ-D7; Mon, 02 Mar 2020 00:03:38 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8YYU-0000yX-SO
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 00:03:33 +0000
X-Originating-IP: 72.234.241.177
Received: from [192.168.22.124] (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5F070240004;
 Mon,  2 Mar 2020 00:03:15 +0000 (UTC)
To: Moritz Warning <moritzwarning@web.de>, openwrt-devel@lists.openwrt.org
References: <20200301024850.1528027-1-mail@aparcar.org>
 <1c469a96-4a7f-a030-d4f4-c294e65a0f20@web.de>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <78d26045-ddaa-60a7-9fa6-7c11c79956a6@aparcar.org>
Date: Sun, 1 Mar 2020 14:03:13 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1c469a96-4a7f-a030-d4f4-c294e65a0f20@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_160331_190407_DCACCF99 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 01.03.20 02:29, Moritz Warning wrote:
> Hi Paul,
>
> as I see it, there are now two JSON options:
>
> - creates the single JSON files in the $(KDIR)/tmp folder
> - create a per target overview JSON that contains nearly all data of the single JSON files
This is the way I implemented it now :)
> Questions:
>
> - Why not only have one JSON menu option that create the one per target JSON file?
See above.
> - The Python script puts variable VERSION_CODE (e.g. r12145-4716c843d6) into a JSON field called version_commit.
>    It is probably better to use version_code, before it cannot be changed anymore.
Thanks, included in v3
>
> On 3/1/20 3:48 AM, Paul Spooren wrote:
>> JSON info files contain machine readable information of built profiles
>> and resulting images. These files where added via 881ed09ee6e2. They are
>> useful for firmware wizards and script checking for reproducibility.
>>
>> Currently all JSON files are stored next to the built images, resulting
>> in up to 168 individual files for the ath79/generic target.
>>
>> This PR refactors the JSON creation to store individual files in
>> $(KDIR)/tmp and create an single overview file called `profiles.json` in
>> the target dir.
>>
>> As before, this creation is enabled by default only if `BUILDBOT` is set.
>>
>> The previous implementation used the functions `json.dumps()` which seem
>> to have caused broken files. Now the `pathlib` library is used to deal
>> with files and the `json` library only reads/writes into variables.
>>
>> Tested via buildroot & ImageBuilder on ath79/generic.
>>
>> Signed-off-by: Paul Spooren <mail@aparcar.org>
>> ---
>> v2:
>>    * One instead of three CONFIG options
>>    * Only created `profiles.json` without copying individual JSON files
>>    * Add merging functionality to ImageBuilder
>>    * Use underscores in Makefile function name
>>    * Fix wrong `rm -f` path (missing /tmp)
>>    * Use `pathlib` instead of `json.dump`
>>    * Use `os.getenv` from Python stdlib
>>    * Remove "generic" subtarget fallback as it is implement in image.mk
>>
>>   Makefile                            |  6 ++++
>>   config/Config-build.in              | 10 ++++---
>>   include/image.mk                    |  6 ++--
>>   scripts/json_add_image_info.py      | 45 ++++++++++++++---------------
>>   scripts/json_overview_image_info.py | 33 +++++++++++++++++++++
>>   target/imagebuilder/files/Makefile  |  7 +++++
>>   6 files changed, 77 insertions(+), 30 deletions(-)
>>   create mode 100755 scripts/json_overview_image_info.py
>>
>> diff --git a/Makefile b/Makefile
>> index 181c33b180..b9f92babf6 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -96,6 +96,11 @@ buildversion: FORCE
>>   feedsversion: FORCE
>>   	$(SCRIPT_DIR)/feeds list -fs > $(BIN_DIR)/feeds.buildinfo
>>
>> +json_overview_image_info: FORCE
>> +	INPUT_DIR=$(BUILD_DIR)/linux-$(BOARD)$(if $(SUBTARGET),_$(SUBTARGET))/tmp \
>> +		TARGET_DIR=$(BIN_DIR) \
>> +		$(SCRIPT_DIR)/json_overview_image_info.py
>> +
>>   diffconfig: FORCE
>>   	mkdir -p $(BIN_DIR)
>>   	$(SCRIPT_DIR)/diffconfig.sh > $(BIN_DIR)/config.buildinfo
>> @@ -108,6 +113,7 @@ prepare: .config $(tools/stamp-compile) $(toolchain/stamp-compile)
>>
>>   world: prepare $(target/stamp-compile) $(package/stamp-compile) $(package/stamp-install) $(target/stamp-install) FORCE
>>   	$(_SINGLE)$(SUBMAKE) -r package/index
>> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO),$(_SINGLE)$(SUBMAKE) -r json_overview_image_info)
>>   	$(_SINGLE)$(SUBMAKE) -r checksum
>>
>>   .PHONY: clean dirclean prereq prepare world package/symlinks package/symlinks-install package/symlinks-clean
>> diff --git a/config/Config-build.in b/config/Config-build.in
>> index 6a6fb2882c..57428399ab 100644
>> --- a/config/Config-build.in
>> +++ b/config/Config-build.in
>> @@ -7,12 +7,14 @@
>>
>>   menu "Global build settings"
>>
>> -	config JSON_ADD_IMAGE_INFO
>> -		bool "Create JSON info files per build image"
>> +	config JSON_OVERVIEW_IMAGE_INFO
>> +		bool "Create JSON info file overview per target"
>>   		default BUILDBOT
>> +		select JSON_CREATE_IMAGE_INFO
>>   		help
>> -		  The JSON info files contain information about the device and
>> -		  build images, stored next to the firmware images.
>> +		  Create a JSON info file called profiles.json in the target
>> +		  directory containing machine readable list of built profiles
>> +		  and resulting images.
>>
>>   	config ALL_NONSHARED
>>   		bool "Select all target specific packages by default"
>> diff --git a/include/image.mk b/include/image.mk
>> index fd04d4020b..933d844e8e 100644
>> --- a/include/image.mk
>> +++ b/include/image.mk
>> @@ -568,9 +568,9 @@ define Device/Build/image
>>
>>     $(BIN_DIR)/$(call IMAGE_NAME,$(1),$(2)): $(KDIR)/tmp/$(call IMAGE_NAME,$(1),$(2))
>>   	cp $$^ $$@
>> -	$(if $(CONFIG_JSON_ADD_IMAGE_INFO), \
>> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO), \
>>   		DEVICE_ID="$(DEVICE_NAME)" \
>> -		BIN_DIR="$(BIN_DIR)" \
>> +		BIN_DIR="$(KDIR)/tmp" \
>>   		IMAGE_NAME="$(IMAGE_NAME)" \
>>   		IMAGE_TYPE=$(word 1,$(subst ., ,$(2))) \
>>   		IMAGE_PREFIX="$(IMAGE_PREFIX)" \
>> @@ -612,7 +612,7 @@ define Device/Build/artifact
>>   endef
>>
>>   define Device/Build
>> -  $(shell rm -f $(BIN_DIR)/$(IMG_PREFIX)-$(1).json)
>> +  $(shell rm -f $(KDIR)/tmp/$(IMG_PREFIX)-$(1).json)
>>
>>     $(if $(CONFIG_TARGET_ROOTFS_INITRAMFS),$(call Device/Build/initramfs,$(1)))
>>     $(call Device/Build/kernel,$(1))
>> diff --git a/scripts/json_add_image_info.py b/scripts/json_add_image_info.py
>> index 44b4031f85..c7f28a2183 100755
>> --- a/scripts/json_add_image_info.py
>> +++ b/scripts/json_add_image_info.py
>> @@ -1,18 +1,15 @@
>>   #!/usr/bin/env python3
>>
>>   import json
>> -import os
>> +from os import getenv
>>   import hashlib
>> +from pathlib import Path
>>
>> +bin_dir = Path(getenv("BIN_DIR"))
>>
>> -def e(variable, default=None):
>> -    return os.environ.get(variable, default)
>> +json_path = (bin_dir / getenv("IMAGE_PREFIX")).with_suffix(".json")
>>
>> -
>> -json_path = "{}{}{}.json".format(e("BIN_DIR"), os.sep, e("IMAGE_PREFIX"))
>> -
>> -with open(os.path.join(e("BIN_DIR"), e("IMAGE_NAME")), "rb") as image_file:
>> -    image_hash = hashlib.sha256(image_file.read()).hexdigest()
>> +image_hash = hashlib.sha256((bin_dir / getenv("IMAGE_NAME")).read_bytes()).hexdigest()
>>
>>
>>   def get_titles():
>> @@ -20,36 +17,38 @@ def get_titles():
>>       for prefix in ["", "ALT0_", "ALT1_", "ALT2_"]:
>>           title = {}
>>           for var in ["vendor", "model", "variant"]:
>> -            if e("DEVICE_{}{}".format(prefix, var.upper())):
>> -                title[var] = e("DEVICE_{}{}".format(prefix, var.upper()))
>> +            if getenv("DEVICE_{}{}".format(prefix, var.upper())):
>> +                title[var] = getenv("DEVICE_{}{}".format(prefix, var.upper()))
>>
>>           if title:
>>               titles.append(title)
>>
>>       if not titles:
>> -        titles.append({"title": e("DEVICE_TITLE")})
>> +        titles.append({"title": getenv("DEVICE_TITLE")})
>>
>>       return titles
>>
>>
>> -if not os.path.exists(json_path):
>> +if not json_path.is_file():
>>       device_info = {
>> -        "id": e("DEVICE_ID"),
>> -        "image_prefix": e("IMAGE_PREFIX"),
>> +        "id": getenv("DEVICE_ID"),
>> +        "image_prefix": getenv("IMAGE_PREFIX"),
>>           "images": [],
>>           "metadata_version": 1,
>> -        "supported_devices": e("SUPPORTED_DEVICES").split(),
>> -        "target": "{}/{}".format(e("TARGET"), e("SUBTARGET", "generic")),
>> +        "supported_devices": getenv("SUPPORTED_DEVICES").split(),
>> +        "target": "{}/{}".format(getenv("TARGET"), getenv("SUBTARGET")),
>>           "titles": get_titles(),
>> -        "version_commit": e("VERSION_CODE"),
>> -        "version_number": e("VERSION_NUMBER"),
>> +        "version_commit": getenv("VERSION_CODE"),
>> +        "version_number": getenv("VERSION_NUMBER"),
>>       }
>>   else:
>> -    with open(json_path, "r") as json_file:
>> -        device_info = json.load(json_file)
>> +    device_info = json.loads(json_path.read_text())
>>
>> -image_info = {"type": e("IMAGE_TYPE"), "name": e("IMAGE_NAME"), "sha256": image_hash}
>> +image_info = {
>> +    "type": getenv("IMAGE_TYPE"),
>> +    "name": getenv("IMAGE_NAME"),
>> +    "sha256": image_hash,
>> +}
>>   device_info["images"].append(image_info)
>>
>> -with open(json_path, "w") as json_file:
>> -    json.dump(device_info, json_file, sort_keys=True, indent="  ")
>> +json_path.write_text(json.dumps(device_info))
>> diff --git a/scripts/json_overview_image_info.py b/scripts/json_overview_image_info.py
>> new file mode 100755
>> index 0000000000..bba13dd80c
>> --- /dev/null
>> +++ b/scripts/json_overview_image_info.py
>> @@ -0,0 +1,33 @@
>> +#!/usr/bin/env python3
>> +
>> +import json
>> +from pathlib import Path
>> +from os import getenv
>> +
>> +target_dir = Path(getenv("TARGET_DIR"))
>> +input_dir = Path(getenv("INPUT_DIR", target_dir))
>> +
>> +output_json = {}
>> +
>> +assert target_dir, "Target directory required"
>> +
>> +for json_file in input_dir.glob("*.json"):
>> +    profile_info = json.loads(json_file.read_text())
>> +    if not output_json:
>> +        output_json = {
>> +            "metadata_version": 1,
>> +            "target": profile_info["target"],
>> +            "version_commit": profile_info["version_commit"],
>> +            "version_number": profile_info["version_number"],
>> +            "profiles": {},
>> +        }
>> +
>> +    output_json["profiles"][profile_info["id"]] = {
>> +        "supported_devices": profile_info["supported_devices"],
>> +        "images": profile_info["images"],
>> +        "titles": profile_info["titles"],
>> +    }
>> +
>> +Path(target_dir / "profiles.json").write_text(
>> +    json.dumps(output_json, sort_keys=True, indent="  ")
>> +)
>> diff --git a/target/imagebuilder/files/Makefile b/target/imagebuilder/files/Makefile
>> index 15b3d5c35c..ed9e298636 100644
>> --- a/target/imagebuilder/files/Makefile
>> +++ b/target/imagebuilder/files/Makefile
>> @@ -118,6 +118,7 @@ _call_image: staging_dir/host/.prereq-build
>>   	$(MAKE) package_install
>>   	$(MAKE) -s prepare_rootfs
>>   	$(MAKE) -s build_image
>> +	$(if $(CONFIG_JSON_OVERVIEW_IMAGE_INFO),$(_SINGLE)$(SUBMAKE) -r json_overview_image_info)
>>   	$(MAKE) -s checksum
>>
>>   _call_manifest: FORCE
>> @@ -163,12 +164,18 @@ prepare_rootfs: FORCE
>>   	$(CP) $(TARGET_DIR) $(TARGET_DIR_ORIG)
>>   	$(call prepare_rootfs,$(TARGET_DIR),$(USER_FILES),$(DISABLED_SERVICES))
>>
>> +
>>   build_image: FORCE
>>   	@echo
>>   	@echo Building images...
>>   	$(NO_TRACE_MAKE) -C target/linux/$(BOARD)/image install TARGET_BUILD=1 IB=1 EXTRA_IMAGE_NAME="$(EXTRA_IMAGE_NAME)" \
>>   		$(if $(USER_PROFILE),PROFILE="$(USER_PROFILE)")
>>
>> +json_overview_image_info: FORCE
>> +	INPUT_DIR=$(BUILD_DIR)/linux-$(BOARD)$(if $(SUBTARGET),_$(SUBTARGET))/tmp \
>> +		TARGET_DIR=$(BIN_DIR) \
>> +		$(SCRIPT_DIR)/json_overview_image_info.py
>> +
>>   checksum: FORCE
>>   	@echo
>>   	@echo Calculating checksums...
>>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
