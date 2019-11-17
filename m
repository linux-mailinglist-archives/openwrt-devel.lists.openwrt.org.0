Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67444FF9BA
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 14:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xRobhDcsOm5vCKskMljIcd6EYcILcKghj6QDNJlXK8I=; b=Ub7XE48jWBpEBO
	N3eW2OyOywQUhF1QFCd2UV/p6cD0MpgAwv1dywbQAe/5vsNnFITRan1AcLMDfKRRu0lW/STiC0Zir
	vHiCSjwxIMB62xRkMpd6OvaHC2y5YRucFh0J/fyTsBg0Z/e1OlgBLsebYktc1O6OTOYvvtIVraIbG
	yeY98fpn682Y0UzgDdwfCT0pNrDDgjZMUdC0rmPGK6v9iSxJzx5wC6LfVPJgoqgX8ApKVoildzNhR
	jvM702RrxC1u7BpEF2kYhmhueQEoc9nAlFvm7t5BELSJE7gu0ad4W4QiT8v9EJ4VrP5umulY84ka+
	fir1GhE6jny2AcWVQ0Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWKAM-0007Jv-3x; Sun, 17 Nov 2019 13:00:34 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWKAE-0007JP-Nw
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 13:00:28 +0000
Received: from buildfff.adridolf.com ([188.193.230.49]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MCJzI-1ifi563hpq-009RtQ; Sun, 17 Nov 2019 14:00:22 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 Nov 2019 13:59:38 +0100
Message-Id: <20191117125939.11135-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Md4GJk6BQGo2/24adkB5twTPaSkaccJVHcOgukKipnE6PIbz452
 t+oEFe93TVVvKNvERR1mY5xTl8qNQyGXLZszdYLJuA83AFO1jpIpGMLF1AwiWcJmIhD/A9r
 QLphaJctSOxHC6myijNvmyhd/5sLcArbuLX3nfzhkc0tztoWNHCy8G7Qc2+8GiE94uTvmNu
 vwRFZUrAouVUCTDosqwRw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YxfpZm+CvDE=:VfzESsq/RMjpvmqVGg2mQU
 2ooIm8tGxDs9UpOgTanN83GJ2ypz09beMysbknEuYqZf7dzFNQxBayenOcy4ZCJhN4EByMGOH
 K7hp3Rg2rhkReOKOBEF4P3550GuMGk0aJwRVuWAnf75KTf5wSn4u70y+/F5NUc1SG9ooVYSmM
 Kn2f0OFxDQUd1aEtvCkYJ+gLlKDeFGKLnpw0/JiQORylWtjcPYHjy8gPBAwnIVmeycO6JE3cT
 MjYWW2DCFdm+3jSuftm/xOHctbylfRvxjdUEQAX73E0wOdhJQrJWnTbH+QyeUV1KyFNkvtOYS
 HtLCVFD6D03qDVBCNedhsNXnwFl46yhoTBjsheufI6Md49TTUHyacyhQVmKKKl9zd9+OoPzOy
 3zIXBPWXuH2rHT45/eUftjO6UjHnR4O9rhJxzL/HbdoKd5FSyiiMw5xbXeMww9M8JYwvWfunz
 ur7Qmqxed/eThR41BeW4Z4Jr52bA+mqgsMe2/4K3A4JG9N/dzdr6mUsK4FsLLFeXJEFR+EQEp
 qnFUhL2VzHYgC1ADbjUAGEVv1XzkU0js/IGfyrYOcgTW/NoXiusiKtH9Aiv2KfPRTsTXGDm+P
 vUwjg8+EjM4WRxOnp1rGlukAme7CO+ZLoaNBHh85qmdO0fmSA5RDY5lReqBktAeWcvUDWRo6r
 IP7TNGbe8KWopKg2TUtOgKwWQI3sMTSqYAUvv1tkLAufn98pM9rcuIRxPS12+NjycoDV/iZWm
 KaCjb5ABOxapjXNLKmr5mkAisCRvxKeSJ3K+cSB7M/5wliWCfg3ky7yyBGRmp+2nhe/9QfX1H
 KgsnMbIXQjT9NYMCq+LQu9V47HiVlhYw28BfoyecETekjW8scmTsJ4PlDRogeSLUKw7hPz1PV
 5oKUNNRiCyI1+S7aIxcgab+A13KABhM5v3WuLls98=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_050027_069626_A900E56D 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] base-files: config_generate: split
 macaddr with multiple ifaces
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Sungbo Eo <mans0n@gorani.run>

netifd does not handle network.@device[x].name properly if it
contains multiple ifaces separated by spaces. Due to this, board.d
lan_mac setup does not work if multiple ifaces are set to LAN by
ucidef_set_interface_lan.

To fix this, create a device node for each member iface when
running config_generate instead. Those are named based on the
member ifname:

  ucidef_set_interface_lan "eth0 eth1.1"
  ucidef_set_interface_macaddr "lan" "yy:yy:yy:yy:yy:01"

will return

  config device 'eth0_dev'
        option name 'eth0'
        option macaddr 'yy:yy:yy:yy:yy:01'

  config device 'eth1_1_dev'
        option name 'eth1.1'
        option macaddr 'yy:yy:yy:yy:yy:01'

ref: https://github.com/openwrt/openwrt/pull/2542

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
[only use new names, extend description, change commit title]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Changes in v2:
- Remove lan_dev/wan_dev, use new names consistently

I plan to also backport this to at least 19.07 and 18.06, as it's
essentially a fix.
---
 package/base-files/files/bin/config_generate | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index 3ca035ca8b..2f62912180 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -85,12 +85,16 @@ generate_network() {
 		set network.$1.proto='none'
 	EOF
 
-	[ -n "$macaddr" ] && uci -q batch <<-EOF
-		delete network.$1_dev
-		set network.$1_dev='device'
-		set network.$1_dev.name='$ifname'
-		set network.$1_dev.macaddr='$macaddr'
-	EOF
+	if [ -n "$macaddr" ]; then
+		for name in $ifname; do
+			uci -q batch <<-EOF
+				delete network.${name/./_}_dev
+				set network.${name/./_}_dev='device'
+				set network.${name/./_}_dev.name='$name'
+				set network.${name/./_}_dev.macaddr='$macaddr'
+			EOF
+		done
+	fi
 
 	case "$protocol" in
 		static)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
