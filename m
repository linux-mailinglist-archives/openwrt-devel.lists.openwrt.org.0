Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26431EF211
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMX48XR/uLwtdr6tUuUN2b+AFIuPilPVNHR58u0xc+g=; b=Ua9ltn1mjHJ9bA
	rLTtgb/q5tZqloXZwWPiBm3eSKHgsU1LcTlTmUpASc2omno9hGNb75FjQ+FkF+tTRJY/PPA6tbdB+
	yRZEUaSq3A5fvOxvSaY1zOpm6Yg+zn9JnDKTBrhJ/ja9yz0Fnye/tJ6HDsQ1ZlhCgcCZDxORey+HM
	e11eHCT3ILH6Dsx1pfYm1nlXTqVI60MZj2E3K26QU7u9NVvC0YqbMVvkCg+u2Wf69WHhdLKthOj2l
	iA2hfCaxsVP2SUfnqjAGc8FMimKNwbt8VFunoNjYFYBQ5Prc0raFYwzyr7rQLKemZcOeoUQgb/uP4
	O30AV4BRhj88if3gKuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmr5-0000Ce-GY; Tue, 05 Nov 2019 00:37:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqN-00085n-6h
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CA4084D80;
 Tue,  5 Nov 2019 01:37:09 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 64b6a49f;
 Tue, 5 Nov 2019 01:36:59 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:43 +0100
Message-Id: <20191105003657.16540-5-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163711_401943_1FB59129 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 04/18] add initial GitLab CI support
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VXNlcyBjdXJyZW50bHkgcHJvb2Ytb2YtY29uY2VwdCBvcGVud3J0LWNpWzFdIGluIG9yZGVyIHRv
OgoKICogaW1wcm92ZSB0aGUgcXVhbGl0eSBvZiB0aGUgY29kZWJhc2UgaW4gdmFyaW91cyBhcmVh
cwogKiBkZWNyZWFzZSBjb2RlIHJldmlldyB0aW1lIGFuZCBoZWxwIG1lcmdpbmcgY29udHJpYnV0
aW9ucyBmYXN0ZXIKICogZ2V0IGF1dG9tYWdpYyBmZWVkYmFjayBsb29wIG9uIHZhcmlvdXMgcGxh
dGZvcm1zIGFuZCB0b29scwogICAtIG91dCBvZiB0cmVlIGJ1aWxkIHdpdGggT3BlbldydCBTREsg
b24gZm9sbG93aW5nIHRhcmdldHM6CiAgICAgKiBhdGg3OS1nZW5lcmljCiAgICAgKiBpbXg2LWdl
bmVyaWMKICAgICAqIG1hbHRhLWJlCiAgICAgKiBtdmVidS1jb3J0ZXhhNTMKICAgLSBvdXQgb2Yg
dHJlZSBuYXRpdmUgYnVpbGQgb24geDg2LzY0IHdpdGggR0NDICh2ZXJzaW9ucyA3LCA4LCA5KSBh
bmQgQ2xhbmcgOQogICAtIG91dCBvZiB0cmVlIG5hdGl2ZSB4ODYvNjQgc3RhdGljIGNvZGUgYW5h
bHlzaXMgd2l0aCBjcHBjaGVjayBhbmQKICAgICBzY2FuLWJ1aWxkIGZyb20gQ2xhbmcgOQoKMS4g
aHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtY2kvCgpTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIC5naXRsYWItY2kueW1sIHwgOCArKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IC5n
aXRsYWItY2kueW1sCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnlt
bApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjAyMTM2MjQ3NTE4Zgot
LS0gL2Rldi9udWxsCisrKyBiLy5naXRsYWItY2kueW1sCkBAIC0wLDAgKzEsOCBAQAordmFyaWFi
bGVzOgorICBDSV9FTkFCTEVfVU5JVF9URVNUSU5HOiAxCisgIENJX1RBUkdFVF9CVUlMRF9ERVBF
TkRTOiB1Y2kKKyAgQ0lfQ01BS0VfRVhUUkFfQlVJTERfQVJHUzogLURMVUFQQVRIPS91c3IvbGli
L2x1YQorCitpbmNsdWRlOgorICAtIHJlbW90ZTogaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29w
ZW53cnQtY2kvcmF3L21hc3Rlci9vcGVud3J0LWNpL2dpdGxhYi9tYWluLnltbAorICAtIHJlbW90
ZTogaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtY2kvcmF3L21hc3Rlci9vcGVud3J0
LWNpL2dpdGxhYi9waXBlbGluZS55bWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
