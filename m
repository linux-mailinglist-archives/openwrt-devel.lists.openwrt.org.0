Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CF91F8A9E
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 22:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qzN8Sf0FQVs9T8Ytiuw5uWlHXB7rTIKvDAPWzRVVAM8=; b=bSCAIKJ8lPo4ismkbKSfAM64r
	vuOzhharCp9WHL0x5imUcOlWuGG4QZlWtZwsFRwgtZ4GQlPaLUGYopxLBQYSCJj3GvtOOWYvMuYsL
	x0Cqz5pU6H9TfGllGMyKEyOJMiWj90H2tILLUNpeAlZsmiuChJx/NBAavMiFyN8Oqt6pulH+I7O2x
	wtwHHwyI6rT4HR7LNF1rZihpqG5tWZU9+cS7KDdIFkPbynrwOJRYFD5jmivDnvCnCThWIYI/dsqph
	8DLCsSNHhXHeNWedjtxVpwNmWg2MIfYRw35WgdCmpGl3K4P2kzvcOmV7gZ66hxUevlzUe3FZMSZcW
	hHfEFhqhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkZ9O-00076i-Pp; Sun, 14 Jun 2020 20:22:42 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkZ9H-00076D-5Z
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 20:22:37 +0000
X-Originating-IP: 72.234.141.215
Received: from [10.137.0.13] (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1AA15C0003;
 Sun, 14 Jun 2020 20:22:30 +0000 (UTC)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20200614093330.17516-1-mail@aparcar.org>
 <002a01d64286$7fc90660$7f5b1320$@adrianschmutzler.de>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <f718a261-fc80-5e5e-0ed2-081396f529a1@aparcar.org>
Date: Sun, 14 Jun 2020 10:22:26 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <002a01d64286$7fc90660$7f5b1320$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_132235_481944_DF73ABB0 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in
 image filename
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

Hi,

On 6/14/20 10:00 AM, mail@adrianschmutzler.de wrote:
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Paul Spooren
>> Sent: Sonntag, 14. Juni 2020 11:34
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in image
>> filename
>>
>> The target/subtarget information in image filenames is barely of any use for
>> developers or end users.
>>
>> A developer reads the profile name and the target is either obvious due to
>> previous work or `cd targets/ && grep -r <profile>` tells the target within
>> 3ms. If no buildroot is available `cat <image> | tail -c 200` allows a look at the
>> attached metadata which includes the target/subtarget.
>>
>> For users the information is entirely useless and maybe even harmful.
>> Target names like `cortexa9` could easily be mistaken as an actual device
>> name while the only relevant information would be `linksys_wrt3200acm`.
>> Images are more realistically downloaded via a Wiki entry or a firmware
>> wizard.
>>
>> This commit therefore adds the new image option called
>> CONFIG_TARGET_FILENAMES to make the target/subtarget filename part
>> optional. It is disabled by default.
>>
>> As the profile name `generic` appears multiple times in the x86 target as well
>> as in oceton and ath25, the proposed patch on GitHub should be merged
>> first:
>> * treewide: use unique profile names #3082
>> https://github.com/openwrt/openwrt/pull/3082
>>
>> Newly produced files would look like the following:
>> * openwrt-linksys_wrt3200acm-initramfs-kernel.bin
>> * openwrt-linksys_wrt3200acm.manifest
>> * openwrt-linksys_wrt3200acm-squashfs-factory.img
>> * openwrt-linksys_wrt3200acm-squashfs-sysupgrade.bin
> I just think of ar71xx and ath79, where we have the same device but different targets. Of course, the name won't be exactly equal, as ath79 will have e.g. tplink_ prefix and ar71xx won't.
Isn't ar71xx removed from master builds? It's neither at snapshot 
https://downloads.openwrt.org/snapshots/targets/ nor planed to be 
re-added to any upcoming release, is it?
> For bcm63xx, we have two subtargets that build the same devices.
> If we look at PR#2957, we might have a now bmips target at some point that features the same devices as bcm63xx.
Can you please explain why that's the case? Why do we offer different 
images for the same device? I understand that for ar71xx -> ath79 within 
a transfer period but it's never the scope to offer different "flavors" 
long term, is it?
> This won't necessarily break anything, as images will still be in different folders (at least in /bin).
I would be at least confusing and reverts the "unique profile name" idea.
> However, we couldn't tell the difference between ar71xx/ath79 or similar from the image name (easily) after this change, or whether it's generic or smp for bcm63xx. For my personal taste, this drawback is bigger that the gain we will get from removing the target/subtarget part.
Again, this sounds like a undesirable state where we not only build but 
also maintain multiple images for the save device. Wouldn't it be 
possible to add the target to all those "legacy images", however remove 
it wherever a target uses device tree and images.mk aka has long term 
support?
> So, unless there is overwhelming support, I tend to NAK this.
:(
> Best
Paul
>
>> Signed-off-by: Paul Spooren <mail@aparcar.org>
>> ---
>> It's been a while since I made a controversial patch[0] so it feels about time.
>>
>> [0]: https://github.com/openwrt/openwrt/pull/2107
>>
>>   include/image.mk                   | 9 +++++----
>>   package/base-files/image-config.in | 9 +++++++++
>>   2 files changed, 14 insertions(+), 4 deletions(-)
>>
>> diff --git a/include/image.mk b/include/image.mk index
>> 984b64fb9c..c6fc467c9e 100644
>> --- a/include/image.mk
>> +++ b/include/image.mk
>> @@ -37,11 +37,12 @@ KDIR=$(KERNEL_BUILD_DIR)
>> KDIR_TMP=$(KDIR)/tmp
>> DTS_DIR:=$(LINUX_DIR)/arch/$(LINUX_KARCH)/boot/dts
>>
>> +IMG_PREFIX_TARGET:=$(if $(CONFIG_TARGET_FILENAMES),$(BOARD)$(if
>> +$(SUBTARGET),-$(SUBTARGET))-)
>>   IMG_PREFIX_EXTRA:=$(if $(EXTRA_IMAGE_NAME),$(call
>> sanitize,$(EXTRA_IMAGE_NAME))-)  IMG_PREFIX_VERNUM:=$(if
>> $(CONFIG_VERSION_FILENAMES),$(call sanitize,$(VERSION_NUMBER))-)
>> IMG_PREFIX_VERCODE:=$(if $(CONFIG_VERSION_CODE_FILENAMES),$(call
>> sanitize,$(VERSION_CODE))-)
>>
>> -IMG_PREFIX:=$(VERSION_DIST_SANITIZED)-
>> $(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$
>> (BOARD)$(if $(SUBTARGET),-$(SUBTARGET))
>> +IMG_PREFIX:=$(VERSION_DIST_SANITIZED)-
>> $(IMG_PREFIX_VERNUM)$(IMG_PREFIX_
>> +VERCODE)$(IMG_PREFIX_EXTRA)$(IMG_PREFIX_TARGET)
>>   IMG_ROOTFS:=$(IMG_PREFIX)-rootfs
>>   IMG_COMBINED:=$(IMG_PREFIX)-combined
>>   IMG_PART_SIGNATURE:=$(shell echo
>> $(SOURCE_DATE_EPOCH)$(LINUX_VERMAGIC) | mkhash md5 | cut -b1-8)
>> @@ -293,7 +294,7 @@ endef
>>
>>   define Image/Manifest
>>   	$(call opkg,$(TARGET_DIR_ORIG)) list-installed > \
>> -		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-
>> $(PROFILE_SANITIZED)).manifest
>> +		$(BIN_DIR)/$(IMG_PREFIX)$(if
>> +$(PROFILE_SANITIZED),$(PROFILE_SANITIZED)).manifest
>>   endef
>>
>>   define Image/gzip-ext4-padded-squashfs
>> @@ -317,7 +318,7 @@ ifdef CONFIG_TARGET_ROOTFS_TARGZ
>>     define Image/Build/targz
>>   	$(TAR) -cp --numeric-owner --owner=0 --group=0 --mode=a-s --
>> sort=name \
>>   		$(if $(SOURCE_DATE_EPOCH),--
>> mtime="@$(SOURCE_DATE_EPOCH)") \
>> -		-C $(TARGET_DIR)/ . | gzip -9n >
>> $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-
>> $(PROFILE_SANITIZED))-rootfs.tar.gz
>> +		-C $(TARGET_DIR)/ . | gzip -9n >
>> $(BIN_DIR)/$(IMG_PREFIX)$(if
>> +$(PROFILE_SANITIZED),$(PROFILE_SANITIZED))-rootfs.tar.gz
>>     endef
>>   endif
>>
>> @@ -385,7 +386,7 @@ define Device/Init
>>
>>     IMAGES :=
>>     ARTIFACTS :=
>> -  IMAGE_PREFIX := $(IMG_PREFIX)-$(1)
>> +  IMAGE_PREFIX := $(IMG_PREFIX)$(1)
>>     IMAGE_NAME = $$(IMAGE_PREFIX)-$$(1)-$$(2)
>>     IMAGE_SIZE :=
>>     KERNEL_PREFIX = $$(IMAGE_PREFIX)
>> diff --git a/package/base-files/image-config.in b/package/base-files/image-
>> config.in
>> index 3432db525a..5a70d51a7a 100644
>> --- a/package/base-files/image-config.in
>> +++ b/package/base-files/image-config.in
>> @@ -264,6 +264,15 @@ if VERSIONOPT
>>   			Enable this to include the revision identifier or the
>> configured
>>   			version code into the firmware image, SDK- and
>> Image Builder archive
>>   			file names
>> +
>> +	config TARGET_FILENAMES
>> +		bool
>> +		prompt "Target and subtarget in filenames"
>> +		default n
>> +		help
>> +			Enable this to include the target (and subtarget) in
>> +			firmware image, SDK- and Image Builder archive file
>> names
>> +
>>   endif
>>
>>
>> --
>> 2.20.1
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
