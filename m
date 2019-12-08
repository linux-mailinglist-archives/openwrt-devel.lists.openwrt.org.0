Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7461162D3
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:34:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=suezTOTWrKUae2/Dl3y3u4+b22nBgm95TRSuXiG2tfE=; b=PPRahd3VvR27dJrQBIPXgSeMFV
	udMghdc+akzl25nuwNFWQPIM14ZwTNsRvWt/EQQgUMIKcJMoDLSrlFpGOILWlmjqo/c0iYWg8/918
	W9RTHKveLsUxHTLlMpxgFSS+jK4kbv/en4RVfaDdp6RzAu/6Jtj5H9eBvAnswn8ZVLm+u41DRFVyr
	cBLzu8jr7vYbF+NL46VU9dgbSOLP6d7nWTlI2ZIWdrBHkKDN/cNdcY65t2W/OAtHEWxYQQzONLm/M
	vT8354K8NyZ7118eYwdWu0z1ZOAhNWOEkWOIhCIzwjLAccNf2fngkDhukOHNRtCKDrcQVOGeI2Mgf
	00lL2J2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idyZm-0001S8-LT; Sun, 08 Dec 2019 15:34:26 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyZB-0000zC-9R
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:33:52 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M6URd-1iftJ00twn-006wTe for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:33:43 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:32:54 +0100
Message-Id: <20191208153255.27655-6-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
References: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:d4ZU5BlIiIJQSmhqyfDUqVcxn/JkyfXrfivGoDSZPJhGNkOMzGd
 9AFjSTN/wGI6vkCpAMyKrkJKXjc+LU448Ghx9yWCwicq9GQfiKrdibZ87KrPzu0PFQcYr21
 cIHNzuOS66YafULpMk8WiNpwcFiCf3arNnMJp5e2D84oDlakQru/K4D4IlvTZ72XWjDYtKA
 e7osz2+eLtMS7q0GnIaHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xhm8uYmki5M=:LSchBHgVwMjbM6KOxFZkWC
 VyRXzUUKT9fCSDv9RMgVgYfVDFiicgN5CmYrfOMRteh17KXlhdo3Bxa5TXHBy96iO/KRqP/7m
 CztPON/oXxHhw66a6kzX7aGQF16JQ/B8lTNJWB5fZ9aW4hb6477gauZ+JCoFTi3wDfM8qHtaM
 pAxQLyHyFPeNSpIUvQt4QU3vNdUCfe4E3zN7oZ6JeQAyyZ54wAgZ7RUN6Cxr3o6L+qA5lsqbF
 NyV0IEVBMe7r018Di1eYOQqnpZ/E4Eljyd0x8D3orzUMXHM6q8CsnqZuJjcg8ir47v9GNqmBW
 IEeDfs9wt/3etXRdzaJAv0+riMQubx2a6QjgxF1NkhAmkJSgwcwdJfMnm52oYlZAWViCNKuAT
 orwN0R6m4j2TRBamF+Y/LIi3UNF/0b1M8mucw+KeRKUX5NUi9gZqsqcAxPcR1voqCCgeQdJQw
 LVrOJY7HLHiefSGda/fO2HIN4NVza0L0ofZlECFpFQNoNVgA/QV1FkjG6QnUu8KvXEEZJWUTz
 w1j6/RSWhlmWBZLO5FVzwypTbCL91RuY7n3eJKbOKVv/RmTzapGEh20kR02r+cqwBzzwE0/EF
 9woFYt9ijJvGMF3zn8iMJqRXD0dzQYW6N3YdeTrcpVbew15QljaV0sWfl9QJg1nNcbhXvvTff
 Dx/D03cO78Yv5xXCQd/oTmzxoRXZOSgoi+tszj+Uy3pYA2xWAWcxFsuADEUEMH/Ip+eYXQBCN
 J/naJlgYUsDQHctoUbHM83/Qj5xecoeLXWEWgJDtToDMQlMqjE+9n8paVyYxFD5LRdw3Cja4F
 6ofxt6sXu7BPALEBf6D8lebbCvpVRyQw1hRw4zy1Poc5pP3iSAdJwOqQYnUugmNIik3M1ddVG
 6Uf7xC9yiOG0igfzm1i0qSdU9sOdvzqcu6xsH7Pn8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073349_637384_ABA8495B 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/6] ramips: rt288x: use flash location for
 wan_mac in 02_network
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

This uses the flash locations instead of eth0 MAC address to
calculate MAC address increments for WAN.

The change will make the MAC address setup of a particular device
more obvious and removes the dependency of 02_network on the eth0
initialization.

This removes the wan_mac setup for ralink,v11st-fe as this device
does not set up a MAC address for ethernet in the first place.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ramips/rt288x/base-files/etc/board.d/02_network      | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/target/linux/ramips/rt288x/base-files/etc/board.d/02_network b/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
index b9588f4aad..0cc0e0b28b 100755
--- a/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
@@ -42,13 +42,14 @@ ramips_setup_macs()
 	local label_mac=""
 
 	case $board in
-	airlink101,ar670w|\
+	airlink101,ar670w)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x2004)" 1)
+		;;
 	airlink101,ar725w|\
 	asus,rt-n15|\
 	belkin,f5d8235-v1|\
-	buffalo,wzr-agl300nh|\
-	ralink,v11st-fe)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+	buffalo,wzr-agl300nh)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
 		;;
 	esac
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
