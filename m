Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4586E741A4
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 00:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8oa+EA9emyuMFEi6+tycTUqFnsm2EvbUGzX4b8+DI64=; b=ozXjfvCuqZw2QX
	txP+NQMEPh/0Vjpeiltt7avM01EnHvJgm0ELtczV355TQgjf2L4jTIhSOarDqi+/XrOJXvkxRmprh
	xFvjrSocT2MwISZ7ZcGxQH0XY1XR+BpW8QJiWiWPUU2f6vM2j0rqrh9rpwP3z9vARl8JUIpOh+Xqg
	tguPYu02jrLaHy0vG6xr9z+2+3bTcEPZPTsGhi4CNh81VtmyWDrrWGQwg9ga7YV9qpJUblP+op4qs
	fKlzAnYlhwyiOwUC2Ia0c/VQTAM9XTRPI+vLoElBJm0ng4z7AVpGKlUtlquzGonpejz3qwxA6vO7d
	6uyVjXEat7PgRoJCKAKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqQ21-0002Ex-E0; Wed, 24 Jul 2019 22:46:45 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqQ1o-0002EY-VO
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 22:46:34 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MUog3-1hzSR519DV-00Qmh8 for <openwrt-devel@lists.openwrt.org>; Thu, 25
 Jul 2019 00:46:30 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 00:45:49 +0200
Message-Id: <20190724224549.35382-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:56sjHA3jMjAy6b7z9ARF1HICi37i0Pp8Dzm6y2VKhOwtVbvwxoH
 sWhr5RlyNbQWFjENhrahBHVO4ENn29VNtT5q8RAe8l1mL3AjSTG95J7niAnmcXigKEJX8bC
 1RoIAwYZoUR154JCPyksrYU9YIWFGNQv23iTckuOgMTPry8NKrA7BxmqYdVy26krzNtIhOt
 b6xbGARJIG9Sy83wMWk2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Kz0QQP3gzK8=:As//fp+wFUa0ptYqtKvqJU
 D6fLrHouKeG57FQpVOUaHhhAmimgQQAXFaUrAF30p6D9gpE3ZsEjAAF/YFSL3PgZYd2nzWT+C
 0RfejWxrg5Thl9SQuObrKEYMtxtFWwDWcXuEzoX1c4Lpq0+GgwpqXycx2K3mHSBrCEh9pj2IV
 TWRZ7oduPNLJbiI0VmOjnFU30jlKlvir4bLXSiOvuraI1EluNbUEt07vwEwiKPoze761JMvOR
 fyOcSOd3UxT7vNcALrGMgoe25ZbUDOS9ABW6A9i7U0xEv1o1Rd9uER1rWXXe2DXsh5FnWkLTW
 QIfTJtZjcYRCbNE5QB72uiiPENK3DNRUwCt3iMLNHJUJZ64o8En8+s/N8oT8dU5zcpgrVuIlh
 l+oJUE8a+8VIbP9jJWW2/QnowqdsornotVrZ2bLFD6QVl7cVSWYRKTGz8OyUpGfiLV5jd/80r
 vgF6uoSS38rRpRCakmSrUHNxcd7oWaUzRqZPkcd20B4yKsPo2RhryaIFLwUqYv0tzvM0LCBrz
 W+YGMpvDl37DAtEtpcpOVNtJ/1w7FHOrnbdq/S3rgr7bhNPW04JSaPiTxBE+Huc/iHnvs7qZy
 vTmYWboDN9LY9ala1CgTSL+FFR8fUN0S4Hwf3kGniQvfmY2AcbTM28raXAmfqGz98cnfp4mpc
 UZxKgWR3KdXEuh34Q4eNRtgGupG7ZuHMrohz+NRwDzOEgi8F2IZkGdLdFwSKKhhiDWx0NgqkJ
 tN9if70uuuvUTr4UxW2zmCtvCDQaAswZc91pSBlzDskMjHTBQnhJHtHreto=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_154633_304331_FFBB01C1 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] orion: Replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

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
