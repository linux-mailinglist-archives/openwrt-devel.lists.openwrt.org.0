Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1D98098E
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 06:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ITxijVQC7gH8BCv3Gg6rcSaLFWnlYstRYVdH9X0+990=; b=RtKkHn7j/w1JFL
	K9Bqk4MQFgy9+mzZxTWOevO75U0Ui/D/uD5MhVqxS0VIPXjuhvy96XS/NMOK9P9jjn89RU9Mr4kfS
	/ZK/YCPFTPJTQoZd1Dcn5RY8ikd9vgtv0xZBE5VlTFPGFTghA74HoKmPVRexvyZaWuXYcnDxk5PYN
	GNgGHaQRODYNS+XHjk43SbLVEKbvm5IHeiemyVujMo8nOWLb1o4Po4kZmvugT75AdXExqAzoMaj2N
	fT9W0TpKlDXcZlpQd++dlaW/Z9HHwMVeS2jDLfTnLSUEWpy5ZfJu3/Ii29M+u9SZWQsxmDrVNa8ho
	/sqEEim4MvKEvl1tZY7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu8ab-000448-1W; Sun, 04 Aug 2019 04:57:49 +0000
Received: from jake.logic.tuwien.ac.at ([128.130.175.117])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hu8aQ-00043W-6S
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 04:57:40 +0000
Received: from t450.aithon.duckdns.org (morty.logic.tuwien.ac.at
 [128.130.175.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by jake.logic.tuwien.ac.at (Postfix) with ESMTPSA id AA5FDC0450;
 Sun,  4 Aug 2019 06:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=logic.at; s=dkim;
 t=1564894636; bh=z4uKw5gJW/hgcBir7Nsw+3SGhUiYVqlcUzPgAqFRHFM=;
 h=From:To:Cc:Subject:Date:From;
 b=WKU6OlV53HUxB0yNn1J6JUXxWCYJk2atwZzERk1lQknmMshYw7ts9XMv8hKvMPRTT
 /IPZYsoevMkTCY47G5dt7YHtabPRUSRtXQxeEOiKdZT0/6VNCBzUaEXSBccAr3ezDx
 MIHuVT8ECZOimTgIl1f21AsNkxjD8Dm4KQcBNAT4=
Received: from localhost (t450.aithon.duckdns.org [local])
 by t450.aithon.duckdns.org (OpenSMTPD) with ESMTPA id fe5d15de;
 Sun, 4 Aug 2019 06:57:12 +0200 (CEST)
From: Ingo Feinerer <feinerer@logic.at>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 06:56:36 +0200
Message-Id: <20190804045636.37168-1-feinerer@logic.at>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_215738_548433_936109D0 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [128.130.175.117 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: [OpenWrt-Devel] [PATCH] umbim: add home provider query support
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
Cc: Ingo Feinerer <feinerer@logic.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support to query the home provider, mainly for debugging and
information purposes.

Signed-off-by: Ingo Feinerer <feinerer@logic.at>
---
 cli.c | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/cli.c b/cli.c
index 19f36f4..ea7e0b0 100644
--- a/cli.c
+++ b/cli.c
@@ -95,6 +95,31 @@ mbim_pin_state_response(void *buffer, size_t len)
 	return 0;
 }
 
+static int
+mbim_home_provider_response(void *buffer, size_t len)
+{
+	struct mbim_basic_connect_home_provider_r *state = (struct mbim_basic_connect_home_provider_r *) buffer;
+	char *provider_id, *provider_name;
+
+	if (len < sizeof(struct mbim_basic_connect_home_provider_r)) {
+		fprintf(stderr, "message not long enough\n");
+		return -1;
+	}
+	struct mbimprovider *provider = &state->provider;
+
+	provider_id = mbim_get_string(&provider->providerid, buffer);
+	provider_name = mbim_get_string(&provider->providername, buffer);
+
+	printf("  provider_id: %s\n", provider_id);
+	printf("  provider_name: %s\n", provider_name);
+	printf("  cellularclass: %04X - %s\n", le32toh(provider->cellularclass),
+		mbim_enum_string(mbim_cellular_class_values, le32toh(provider->cellularclass)));
+	printf("  rssi: %04X\n", le32toh(provider->rssi));
+	printf("  errorrate: %04X\n", le32toh(provider->errorrate));
+
+	return 0;
+}
+
 static int
 mbim_registration_response(void *buffer, size_t len)
 {
@@ -294,6 +319,14 @@ mbim_pin_state_request(void)
 	return mbim_send_command_msg();
 }
 
+static int
+mbim_home_provider_request(void)
+{
+	mbim_setup_command_msg(basic_connect, MBIM_MESSAGE_COMMAND_TYPE_QUERY, MBIM_CID_BASIC_CONNECT_HOME_PROVIDER, 0);
+
+	return mbim_send_command_msg();
+}
+
 static int
 mbim_registration_request(void)
 {
@@ -478,6 +511,7 @@ static struct mbim_handler handlers[] = {
 	{ "caps", 0, mbim_device_caps_request, mbim_device_caps_response },
 	{ "pinstate", 0, mbim_pin_state_request, mbim_pin_state_response },
 	{ "unlock", 1, mbim_pin_unlock_request, mbim_pin_state_response },
+	{ "home", 0, mbim_home_provider_request, mbim_home_provider_response },
 	{ "registration", 0, mbim_registration_request, mbim_registration_response },
 	{ "subscriber", 0, mbim_subscriber_request, mbim_subscriber_response },
 	{ "attach", 0, mbim_attach_request, mbim_attach_response },
@@ -491,7 +525,7 @@ static struct mbim_handler handlers[] = {
 static int
 usage(void)
 {
-	fprintf(stderr, "Usage: umbim <caps|pinstate|unlock|registration|subscriber|attach|detach|connect|disconnect|config|radio> [options]\n"
+	fprintf(stderr, "Usage: umbim <caps|pinstate|unlock|home|registration|subscriber|attach|detach|connect|disconnect|config|radio> [options]\n"
 		"Options:\n"
 #ifdef LIBQMI_MBIM_PROXY
 		"    -p			use mbim-proxy\n"
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
