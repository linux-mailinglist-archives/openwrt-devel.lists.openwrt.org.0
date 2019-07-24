Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D204C73008
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uXdH5lmXAw0P7TfzIgXI6QKtyMckKc3e1OLjth7nq+I=; b=uCpHvOUhJsIN+a
	r9YnkZUgYJ7TKQDki1qi18U9uujl55e+1Cs5Y4DV82ksXenBZkAog5J7eKbnrbdPwLTtKOSdvUDH7
	Jd0j6+VF3aRmiQQgkT8/4Cu62S2Kek+ZBsYmfFtN5GV+6D+MCDC50svQ9OF8sYtKPVgxj5qPaBfDT
	BgAIN/6DYVSO2Wz6ae4VM2oCwwi2z/HggU4swIupNMiZ52dG4bbY/cKmGEnQiNaLIpRw3eBCLl5iT
	oULNoZTn4ZcVqjxYV3zuU7ZvYar3oa/aUtDxZ3xcdwf/98elA244qzUqQmbitzQZWUdIDIJQ95Jqa
	QHz/y3H5mcidiaQUYBuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHSl-00023W-0S; Wed, 24 Jul 2019 13:37:47 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHSc-00022f-Pi
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:37:40 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MMFdY-1i9SEw2hmA-00JFS5 for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 15:37:36 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 15:37:04 +0200
Message-Id: <20190724133704.2642-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:DU6KsEFoHaWW2cK7CYgPEObrJv3hVYE5LmrpFAU6tXjRklDnLsN
 zipwNvr83a2T5+sBIE0hUp9UieUSbFdTGdvDbs1wK3ezBCBp2o/ZD8lBr+QnFAHnDG3OJpx
 Kj7kzGKUyahofzLkSE7NM0byNqm2rT7njRb0bL7GMBNl7tdoOvLbOSWyCAVl+zrBhL8ezDz
 IPCqDMh4HYhODRCzC0x3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7FQBqc6VwIY=:4sL0RTZ7d39U0xPt/+tegN
 Krqf8Hvfzf9W0kSTGpSSElpUiEL5iDUlVB3nAp61bEgdECf57CKr5Ka16qThcnE+4lHPuvE7C
 IIr1XCxrInx00KpPhuo5vyd1YnJnV5wrhMGKoCENNAeEzsGohnPHHsLznP4SLfrGwwFaxDqr3
 jEeJ61O42pldCU9cPxxkfK6v3wuQ8Xds9LWzSUAyqb9GzDcvd8MuGGwjCwssDQFUN1X4E19vH
 WqfTIfuDoj2HKBA+/rrOjMhm9fsAyZp7OF2+UQaiZTseWKiHvZoe0bG9Cl3WIYZ/sdqEN/2i9
 vb7gu0QxOqlZlm8/bDL2sBTkKIznEWqTw+U8j9Cmvl+GlB1J4wvLQMcw9i2MN9hb6+lgfuPZE
 xBgh/h2+YR+G7HA/ZWDtDg0acXdm8ibL4KtRTYs3JwnCWfCTl1FwGkzj6pnCcrY4awD/tIjpS
 ZD+fq2RNhDz3PnGuFuTFaMdMUCQNeqq8FpdwaUQCz1SJef9yLMrCTY8XSpaqHkgI2um4Rbu2k
 xogl3TMrlTxU1tDo/uCHTHuPlx/3l0TPphyOi53D4XMmdT02LyQ/UtTZFUB7RcAKUUSzp+70/
 G7fWgAbB/gzZPhs2vFAS8YgOjYHs2SebxvKGZv7l6Mh8hVbjepnx/Hnb5XSLWquRthNf3TUGx
 isGtD/ImSo+OVVLtfqAuP/xr39xfHazfWgUxJygVRZUzVsA+aJEs1ogR0yx1RTCOyXqEQ8wP3
 5P44nHIOaLRNsUQjbNSv4WQRqAh1n+/ag2rn4NoqKktmvQ5oUZvRF2bj9M0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_063739_122660_A48099C2 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] orion: Replace backticks by $(...)
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../generic/base-files/etc/uci-defaults/09_hardware  | 12 ++++++------
 target/linux/orion/image/generic.mk                  |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware b/target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware
index 751749d13d..5d928b092a 100644
--- a/target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware
+++ b/target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware
@@ -30,15 +30,15 @@ commit system
 __EOF
 
 # add mac address from U-Boot partition to lan and wan devices
-	MTD=`grep -e 'u-boot' /proc/mtd`
-	MTD=`echo ${MTD} | sed 's/[a-z]*\([0-9]*\):.*/\1/'`
+	MTD=$(grep -e 'u-boot' /proc/mtd)
+	MTD=$(echo ${MTD} | sed 's/[a-z]*\([0-9]*\):.*/\1/')
 	[ -n "${MTD}" ] && {
-		MACADDR=`dd if=/dev/mtdblock${MTD} bs=1 skip=262048 count=6 2>/dev/null | hexdump -e '1/1 "%02x"'`
+		MACADDR=$(dd if=/dev/mtdblock${MTD} bs=1 skip=262048 count=6 2>/dev/null | hexdump -e '1/1 "%02x"')
 		MACADDR2=$(( 0x${MACADDR} + 1))
-		MACADDR2=`printf "%012x" ${MACADDR2}`
+		MACADDR2=$(printf "%012x" ${MACADDR2})
 
-		MACADDR=`echo ${MACADDR} | sed 's/\(..\)/\1:/g' | sed 's/:$//'`
-		MACADDR2=`echo ${MACADDR2} | sed 's/\(..\)/\1:/g' | sed 's/:$//'`
+		MACADDR=$(echo ${MACADDR} | sed 's/\(..\)/\1:/g' | sed 's/:$//')
+		MACADDR2=$(echo ${MACADDR2} | sed 's/\(..\)/\1:/g' | sed 's/:$//')
 
 		uci set network.eth0.macaddr=${MACADDR}
 		uci set network.lan.macaddr=${MACADDR}
diff --git a/target/linux/orion/image/generic.mk b/target/linux/orion/image/generic.mk
index 22909ac73d..595f8c1f79 100644
--- a/target/linux/orion/image/generic.mk
+++ b/target/linux/orion/image/generic.mk
@@ -110,7 +110,7 @@ endef
 
 define Image/Default/FileSizeCheck
  # parameters: 1 = file path, 2 = maximum size in bytes
-	[ `stat -c %s '$(1)'` -le $(2) ] || { echo '   ERROR: $(1) too big (> $(2) bytes)'; rm -f $(1); }
+	[ $(stat -c %s '$(1)') -le $(2) ] || { echo '   ERROR: $(1) too big (> $(2) bytes)'; rm -f $(1); }
 endef
 
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
