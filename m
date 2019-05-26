Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6236E2A941
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 12:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:
	From:List-Post:List-Id:Message-ID:MIME-Version:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ac7QZeB5G+RX0uXg+h5A68wi2I9opF8jO8BHTmM38Mo=; b=pXmFdm7fTJNzFm53d4WubSi0as
	dEJjy5f+L00JvhDHOYeFVJvkJ7WSxYKdEAYW+gbsDQ2ZDO1U2lqbiRoMhAlx+Dffhlg7c8UVOn+QT
	nyvc4j6R5K1jrgRlYW0hb2GF7OGXcip4tBwNZN2K6WIo/UfQMgFOT1fwCFZBrM5pbKy44ElRfpX4K
	zirb+7+C9vEmTxsDbPC2NN30xTwmriAiyGIJhiOui15oDXkFKJGXHdGaLweBFYZQXAm9UtabWSCgO
	lxtuKUxIoFjbqeCxsX0xppIt7MmwyuI4mmampzil1Uo7VmPWSQdo0ES3282ZPGiMvWBqCys+hI0ot
	2dQhQ4eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUqFt-0002UD-O9; Sun, 26 May 2019 10:19:53 +0000
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?UTF-8?q?Fabian=20Bl=C3=A4se?= via openwrt-devel
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
X-Mailman-Version: 2.1.21
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
Content-Type: multipart/mixed; boundary="===============7596938298645924619=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Sun, 26 May 2019 10:19:53 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7596938298645924619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7596938298645924619==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.sgstbr.de ([2a01:4f8:160:14d5:e20b::21])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUqFl-0002Tp-Jx
	for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 10:19:47 +0000
Received: from fbl-desktop.lan (unknown [IPv6:2a02:810d:98c0:4a00:6791:2d02:f640:b309])
	(Authenticated sender: fabian@blaese.de)
	by mail.sgstbr.de (Postfix) with ESMTPSA id 0AAA52C00D2;
	Sun, 26 May 2019 12:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blaese.de; s=201803;
	t=1558865981; bh=mfF5H4/bMdVbotXOIFHsxcJDjN++IstH4wLM0VsdGa4=;
	h=From:To:Subject:Date:From;
	b=VNzINyPJmX9bnYMX0DXaEhxyyjk3rQEQqmtG4H+5fnOWjyYUZh2JVWJ+soiq9qszg
	 Xte/JKqQdsdElGuvdG8+tasTHwiwdQi6fFDslnkWg5jTmxBZN78r9TcWQsPoyJy01g
	 03ljFi+zwQnTVq1oT6VDyka37HZyUtKyfvWS0vMkj5rC/U1F+Op0Q1Ulf8CSVkiEdu
	 LphiK71AOb63/WrvYpHpgNyXtJwVRSl856CCHKLZMY4lXN+ReRU1TQlgVIjop0wk7B
	 pgFxfoWkhZXoUkNDYzB3LXL9GcthFw9NodGCjK3M4lhUw6fi+Pu6zQBB6T1EvCJ6sg
	 jCxTO4rgG6o2w==
From: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
To: openwrt-devel@lists.openwrt.org
Cc: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
Subject: [PATCH] gre: introduce 'nohostroute' option
Date: Sun, 26 May 2019 12:19:05 +0200
Message-Id: <20190526101905.6764-1-fabian@blaese.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_031946_258669_AF0F1A36 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

It is not always necessary to add a host route for the gre peer address.

This introduces a new config option 'nohostroute' (similar to the
option introduced for wireguard in d8e2e19) to allow to disable
the creation of those routes explicitely.

Signed-off-by: Fabian Bläse <fabian@blaese.de>
---
 package/network/config/gre/files/gre.sh | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/package/network/config/gre/files/gre.sh b/package/network/config/gre/files/gre.sh
index 2bb1010b76..3414ed3047 100755
--- a/package/network/config/gre/files/gre.sh
+++ b/package/network/config/gre/files/gre.sh
@@ -56,7 +56,7 @@ gre_setup() {
 	local remoteip
 
 	local ipaddr peeraddr
-	json_get_vars df ipaddr peeraddr tunlink
+	json_get_vars df ipaddr peeraddr tunlink nohostroute
 
 	[ -z "$peeraddr" ] && {
 		proto_notify_error "$cfg" "MISSING_PEER_ADDRESS"
@@ -76,7 +76,9 @@ gre_setup() {
 		break
 	done
 
-	( proto_add_host_dependency "$cfg" "$peeraddr" "$tunlink" )
+	if [ "${nohostroute}" != "1" ]; then
+		( proto_add_host_dependency "$cfg" "$peeraddr" "$tunlink" )
+	fi
 
 	[ -z "$ipaddr" ] && {
 		local wanif="$tunlink"
@@ -133,7 +135,7 @@ grev6_setup() {
 	local remoteip6
 
 	local ip6addr peer6addr weakif
-	json_get_vars ip6addr peer6addr tunlink weakif encaplimit
+	json_get_vars ip6addr peer6addr tunlink weakif encaplimit nohostroute
 
 	[ -z "$peer6addr" ] && {
 		proto_notify_error "$cfg" "MISSING_PEER_ADDRESS"
@@ -153,7 +155,9 @@ grev6_setup() {
 		break
 	done
 
-	( proto_add_host_dependency "$cfg" "$peer6addr" "$tunlink" )
+	if [ "${nohostroute}" != "1" ]; then
+		( proto_add_host_dependency "$cfg" "$peer6addr" "$tunlink" )
+	fi
 
 	[ -z "$ip6addr" ] && {
 		local wanif="$tunlink"
@@ -262,6 +266,7 @@ proto_gre_init_config() {
 	proto_config_add_string "ipaddr"
 	proto_config_add_string "peeraddr"
 	proto_config_add_boolean "df"
+	proto_config_add_boolean "nohostroute"
 }
 
 proto_gretap_init_config() {
@@ -275,6 +280,7 @@ proto_grev6_init_config() {
 	proto_config_add_string "peer6addr"
 	proto_config_add_string "weakif"
 	proto_config_add_string "encaplimit"
+	proto_config_add_boolean "nohostroute"
 }
 
 proto_grev6tap_init_config() {
-- 
2.21.0



--===============7596938298645924619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7596938298645924619==--
