Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2650710B47B
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 18:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKxTia9idvfhSDXdUjcd765Nkn+6avTIaaAC5g/D2dE=; b=KTELTkfqNnJmK+
	PRdkvfiBYNKRE8mwbch/g54rjq/AE/SHQTG/po3Sww9592dcZs8TiUlT1RTvysw3pOyzT0LHIWqtF
	6xK2eSg1aQ119zSgv5UwvVrsi8+W8Aqk5t1lJr1DksMamBzAsnm9q7sFjfGGbpFEDyKIRDGIWUItL
	xEpq6B/2b7u1I/llV2sv4cOAXEPAzOo4Fntf1GzKCGuJRp8enlQIcPC3GJmoLzm3f2W1fDpRvXXKk
	AWkVb6TAMh5nzoy9wS07/cnLJ7NVShgE2bsxIAZ9umQVKFyg5LDlFb3kNFgl9S5TxZshytaFD0ApK
	M4jH46E8kSkqYwx2htVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia194-0004vU-BK; Wed, 27 Nov 2019 17:30:30 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia18i-0004Rl-JW
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 17:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From;
 bh=hSTukELkD6ZUOhza5BmDT2PcowXSg6D+Vkg/Kbkf8bI=; 
 b=U0vjdzfmL22DNXZkn8lCOpVZWbEAkU013m+aLmT2c1ZyPokItWc7sSTKiOXFoBwZcJ5ek5uojIoz2i6UVlr4YNzDBcBdjoYNOSff8ECIaRp7cZsdSeQK8ch4QCzHiVharJyXVpevEkEvvgw7bPFq+Z3xOHysEYl6cAlnUUyrjco=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 27 Nov 2019 18:29:52 +0100
Message-Id: <20191127172952.2143-3-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191127172952.2143-1-daniel@dd-wrt.com>
References: <20191127172952.2143-1-daniel@dd-wrt.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:440c:a968:e99d:d1b9
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1ia17U-0002FL-71
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:440c:a968:e99d:d1b9]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1ia17U-0002FL-71; Wed, 27 Nov 2019 18:28:52 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_093008_978158_978D483D 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] nl80211: add htmode to iwinfo_ops
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This callback shows the currently active HTMODE of the device.

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 include/iwinfo.h |  4 ++-
 iwinfo_nl80211.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+), 1 deletion(-)

diff --git a/include/iwinfo.h b/include/iwinfo.h
index d035c9c..5e64294 100644
--- a/include/iwinfo.h
+++ b/include/iwinfo.h
@@ -88,8 +88,9 @@ enum iwinfo_htmode {
 	IWINFO_HTMODE_VHT80      = (1 << 4),
 	IWINFO_HTMODE_VHT80_80   = (1 << 5),
 	IWINFO_HTMODE_VHT160     = (1 << 6),
+	IWINFO_HTMODE_NOHT       = (1 << 7),
 
-	IWINFO_HTMODE_COUNT      = 7
+	IWINFO_HTMODE_COUNT      = 8
 };
 
 extern const char *IWINFO_HTMODE_NAMES[IWINFO_HTMODE_COUNT];
@@ -231,6 +232,7 @@ struct iwinfo_ops {
 	int (*mbssid_support)(const char *, int *);
 	int (*hwmodelist)(const char *, int *);
 	int (*htmodelist)(const char *, int *);
+	int (*htmode)(const char *, int *);
 	int (*ssid)(const char *, char *);
 	int (*bssid)(const char *, char *);
 	int (*country)(const char *, char *);
diff --git a/iwinfo_nl80211.c b/iwinfo_nl80211.c
index 4b6ef91..36f1da2 100644
--- a/iwinfo_nl80211.c
+++ b/iwinfo_nl80211.c
@@ -2958,6 +2958,75 @@ out:
 	return -1;
 }
 
+struct chan_info {
+	int width;
+	int mode;
+};
+
+static int nl80211_get_htmode_cb(struct nl_msg *msg, void *arg)
+{
+	struct nlattr **tb = nl80211_parse(msg);
+	struct nlattr *cur;
+	struct chan_info *chn = arg;
+
+	if ((cur = tb[NL80211_ATTR_CHANNEL_WIDTH]))
+		chn->width = nla_get_u32(cur);
+
+	if ((cur = tb[NL80211_ATTR_BSS_HT_OPMODE]))
+		chn->mode = nla_get_u32(cur);
+
+	return NL_SKIP;
+}
+
+static int nl80211_get_htmode(const char *ifname, int *buf)
+{
+	struct chan_info chn = { .width = 0, .mode = 0 };
+	char *res;
+	int err;
+
+	res = nl80211_phy2ifname(ifname);
+	*buf = 0;
+
+	err =  nl80211_request(res ? res : ifname,
+				NL80211_CMD_GET_INTERFACE, 0,
+				nl80211_get_htmode_cb, &chn);
+	if (err)
+		return -1;
+
+	switch (chn.width) {
+	case NL80211_CHAN_WIDTH_20_NOHT:
+		*buf = IWINFO_HTMODE_NOHT;
+		break;
+	case NL80211_CHAN_WIDTH_20:
+		if (chn.mode == -1)
+			*buf = IWINFO_HTMODE_VHT20;
+		else
+			*buf = IWINFO_HTMODE_HT20;
+		break;
+	case NL80211_CHAN_WIDTH_40:
+		if (chn.mode == -1)
+			*buf = IWINFO_HTMODE_VHT40;
+		else
+			*buf = IWINFO_HTMODE_HT40;
+		break;
+	case NL80211_CHAN_WIDTH_80:
+		*buf = IWINFO_HTMODE_VHT80;
+		break;
+	case NL80211_CHAN_WIDTH_80P80:
+		*buf = IWINFO_HTMODE_VHT80_80;
+		break;
+	case NL80211_CHAN_WIDTH_160:
+		*buf = IWINFO_HTMODE_VHT160;
+		break;
+	case NL80211_CHAN_WIDTH_5:
+	case NL80211_CHAN_WIDTH_10:
+	default:
+		break;
+	}
+
+	return 0;
+}
+
 static int nl80211_get_htmodelist(const char *ifname, int *buf)
 {
 	struct nl80211_modes m = { 0 };
@@ -3147,6 +3216,7 @@ const struct iwinfo_ops nl80211_ops = {
 	.mbssid_support   = nl80211_get_mbssid_support,
 	.hwmodelist       = nl80211_get_hwmodelist,
 	.htmodelist       = nl80211_get_htmodelist,
+	.htmode		  = nl80211_get_htmode,
 	.mode             = nl80211_get_mode,
 	.ssid             = nl80211_get_ssid,
 	.bssid            = nl80211_get_bssid,
-- 
2.24.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
