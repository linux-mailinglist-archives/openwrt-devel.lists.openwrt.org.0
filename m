Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A53B342C
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 06:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8vopRw6vHXPV41wCTaztIgDHjjkXDH3ZzxLf7pV1r8A=; b=UkeMdrsFEyRfE51GrmsmJlK8M
	uWWXupg8fMlTI3PXvbG5lbbnWQlr5jhHsN9J9rGUz7ZX/hczM9oEJJTTUgzUWU6q7xkCG+Mu7bFL+
	6vb2Yhr33E+kCfHCQdL15VkavYg0kqwigWyx6bKa3oANLYJXj3ILgyqGIgMngn81YwBIAssn8TOKw
	yB7Ils9NuKuihoijI6XRpRTmXqD5yOZsSIZ4YODY6dJSCVtCY2IfaoDAthclez6gxl5u5PsMWwcgh
	CHixyfLXPMUHTELunM4nuUC9q8dziHquJqQhmBRICE6eUvA3PWPaqM3O4rHupM1n9cedROYmgu7H8
	2TRLAntcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9iow-00051N-Du; Mon, 16 Sep 2019 04:41:02 +0000
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9iom-00050p-Vr
 for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 04:40:54 +0000
Received: from player734.ha.ovh.net (unknown [10.108.57.95])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 138C12274F7
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 06:40:50 +0200 (CEST)
Received: from RCM-web1.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player734.ha.ovh.net (Postfix) with ESMTPSA id A54BA9C59B07;
 Mon, 16 Sep 2019 04:40:44 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 16 Sep 2019 06:40:44 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
In-Reply-To: <00c801d5688f$7133cd50$539b67f0$@adrianschmutzler.de>
References: <20190906051054.18311-1-zajec5@gmail.com>
 <20190906051054.18311-4-zajec5@gmail.com>
 <00c801d5688f$7133cd50$539b67f0$@adrianschmutzler.de>
Message-ID: <58e9a86e4304c313412652c97e21ae74@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.10
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 1319836169163148922
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvgdekkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_214053_180175_3A93E01D 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.32.98.231 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use
 $UPGRADE_BACKUP to check for backup
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
Cc: 'John Crispin' <john@phrozen.org>,
 =?UTF-8?Q?=27Rafa=C5=82_Mi=C5=82ecki=27?= <zajec5@gmail.com>,
 'Jo-Philipp Wich' <jo@mein.io>, openwrt-devel@lists.openwrt.org,
 'Jonas Gorski' <jonas.gorski@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-09-11 12:55, Adrian Schmutzler wrote:
>> diff --git a/package/base-files/files/lib/upgrade/common.sh 
>> b/package/base-files/files/lib/upgrade/common.sh
>> index 8e7866f698..0d3162d4fc 100644
>> --- a/package/base-files/files/lib/upgrade/common.sh
>> +++ b/package/base-files/files/lib/upgrade/common.sh
>> @@ -220,7 +220,7 @@ indicate_upgrade() {
>>  # $(2): (optional) pipe command to extract firmware, e.g. dd bs=n 
>> skip=m
>>  default_do_upgrade() {
>>  	sync
>> -	if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ]; then
>> +	if [ -n "$UPGRADE_BACKUP" ]; then
> 
> Any reason why this is "-n" and not "-f" as below?

I kept the old logic which wasn't checking for file existence. Feel free
to develop, test & send a patch changing that.


>>  		get_image "$1" "$2" | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j 
>> "$UPGRADE_BACKUP" write - "${PART_NAME:-
>> image}"
>>  	else
>>  		get_image "$1" "$2" | mtd $MTD_ARGS write - "${PART_NAME:-image}"
>> diff --git a/package/base-files/files/lib/upgrade/do_stage2 
>> b/package/base-files/files/lib/upgrade/do_stage2
>> index 0e6cc1bfc3..0e32445743 100755
>> --- a/package/base-files/files/lib/upgrade/do_stage2
>> +++ b/package/base-files/files/lib/upgrade/do_stage2
>> @@ -11,7 +11,7 @@ else
>>  	default_do_upgrade "$IMAGE"
>>  fi
>> 
>> -if [ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && type 
>> 'platform_copy_config' >/dev/null 2>/dev/null; then
>> +if [ -n "$UPGRADE_BACKUP" ] && type 'platform_copy_config' >/dev/null 
>> 2>/dev/null; then
> 
> Here I'm not so sure about "-f" vs. "-n" ...
> 
>>  	platform_copy_config
>>  fi
>> 
>> diff --git a/package/base-files/files/sbin/sysupgrade 
>> b/package/base-files/files/sbin/sysupgrade
>> index f18143bff4..935d08048e 100755
>> --- a/package/base-files/files/sbin/sysupgrade
>> +++ b/package/base-files/files/sbin/sysupgrade
>> @@ -371,7 +371,6 @@ else
>>  		$backup_attr
>>  		\"command\": $(json_string "$COMMAND"),
>>  		\"options\": {
>> -			\"save_config\": $SAVE_CONFIG,
>>  			\"save_partitions\": $SAVE_PARTITIONS
>>  		}
>>  	}"
>> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh 
>> b/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh
>> index c694c2e6f2..e991a06b7a 100644
>> --- a/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh
>> +++ b/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh
>> @@ -75,7 +75,7 @@ dir825b_do_upgrade_combined() {
>> 
>>  	if [ -n "$fw_mtd" ] &&  [ ${fw_blocks:-0} -gt 0 ]; then
>>  		local append=""
>> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && 
>> append="-j $UPGRADE_BACKUP"
>> +		[ -f "$UPGRADE_BACKUP" ] && append="-j $UPGRADE_BACKUP"
>> 
>>  		sync
>>  		dd if="$fw_file" bs=64k skip=1 count=$fw_blocks 2>/dev/null | \
>> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh 
>> b/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh
>> index 8536d4ba4a..f43bdcea7f 100644
>> --- a/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh
>> +++ b/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh
>> @@ -159,7 +159,7 @@ platform_do_upgrade_openmesh()
>>  	local cfg_size= kernel_size= rootfs_size=
>>  	local append=""
>> 
>> -	[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && 
>> append="-j $UPGRADE_BACKUP"
>> +	[ -f "$UPGRADE_BACKUP" ] && append="-j $UPGRADE_BACKUP"
>> 
>>  	cfg_size=$(dd if="$img_path" bs=2 skip=35 count=4 2>/dev/null)
>>  	kernel_size=$(dd if="$img_path" bs=2 skip=71 count=4 2>/dev/null)
>> diff --git a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh 
>> b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
>> index 726163291d..86e7b6386b 100755
>> --- a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
>> +++ b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
>> @@ -65,7 +65,7 @@ platform_do_upgrade_combined() {
>>  	then
>>  		local rootfspart=$(platform_find_rootfspart "$partitions" 
>> "$kernelpart")
>>  		local append=""
>> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && 
>> append="-j $UPGRADE_BACKUP"
>> +		[ -f "$UPGRADE_BACKUP" ] && append="-j $UPGRADE_BACKUP"
>> 
>>  		if [ "$PLATFORM_DO_UPGRADE_COMBINED_SEPARATE_MTD" -ne 1 ]; then
>>  		    ( dd if="$1" bs=$CI_BLKSZ skip=1 count=$kern_blocks 
>> 2>/dev/null; \
>> @@ -164,7 +164,7 @@ platform_do_upgrade_compex() {
>> 
>>  	if [ -n "$fw_mtd" ] &&  [ ${fw_blocks:-0} -gt 0 ]; then
>>  		local append=""
>> -		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && 
>> append="-j $UPGRADE_BACKUPs"
>> +		[ -f "$UPGRADE_BACKUP" ] && append="-j $UPGRADE_BACKUPs"
> 
> Is there a reason for the trailing "s" here or is this a typo: ="-j
> $UPGRADE_BACKUPs" ?

Try to check when it has appeared there:
git log -p target/linux/ar71xx/base-files/lib/upgrade/platform.sh

It's a typo.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
