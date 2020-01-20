Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669A91427AE
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 10:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HvimVllWhQbN8eDvL0sfnQRI9fGpluUpiP80JNIFas0=; b=oRJmDQacmEKGnF
	NT+Nhex63DlHGWC625aq2aCSJcXjBvkB62m83YSPdC9qRh9D8ReWvr9JIEjYF4CDYXqIaIZ+MWo9T
	lvXenrTqiSADcaUS2/lUeN7gSAZYAnSYn+TeVYLjs6zSdbXzdd291oG3X3oiJXt2bXtqPq8wnVpMZ
	p8t7IOmXyyI+EDqcv5ZcEzhBV1vwxRra7+6uv42Z/Wd85fW1LGTWE2dziG5hW5ZRt9j1wgIj3/35Z
	htdI2Iv8/YkNbWNw+6+7/+SyAcqIBJgwatE2jTugtwtMN3BjzV8Y9QxoisdYYLPd/gshX9ohkt+FG
	egERb1c4QLlcLyEFGP6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itTka-0001fU-9T; Mon, 20 Jan 2020 09:53:40 +0000
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itTkN-0001eB-Vp
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 09:53:33 +0000
Received: from localhost (unknown [192.168.200.7])
 by max.feld.cvut.cz (Postfix) with ESMTP id 9B42419F44BF;
 Mon, 20 Jan 2020 10:53:18 +0100 (CET)
X-Virus-Scanned: IMAP STYX AMAVIS
Received: from max.feld.cvut.cz ([192.168.200.1])
 by localhost (styx.feld.cvut.cz [192.168.200.7]) (amavisd-new, port 10044)
 with ESMTP id wpbvb0gz20zw; Mon, 20 Jan 2020 10:53:14 +0100 (CET)
Received: from localhost.localdomain (labsitronics.feld.cvut.cz
 [147.32.211.25])
 by max.feld.cvut.cz (Postfix) with ESMTP id 3DBE819F445C;
 Mon, 20 Jan 2020 10:53:14 +0100 (CET)
From: ondrej.votava@cvut.cz
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Jan 2020 10:53:05 +0100
Message-Id: <20200120095305.18132-1-ondrej.votava@cvut.cz>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_015328_179997_A6A14E4E 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.32.192.36 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.32.192.36 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] procd: show process's exit code
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
Cc: =?UTF-8?q?Ond=C5=99ej=20Votava?= <ondrej.votava@cvut.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogT25kxZllaiBWb3RhdmEgPG9uZHJlai52b3RhdmFAY3Z1dC5jej4KCkFkZHMgZmVhdHVy
ZSB0byBzaG93IHByb2Nlc3MncyBleGl0IGNvZGUgd2hlbgp1YnVzIHNlcnZpY2UgbGlzdCBpcyBj
YWxsZWQuCgpTaWduZWQtb2ZmLWJ5OiBPbmTFmWVqIFZvdGF2YSA8b25kcmVqLnZvdGF2YUBjdnV0
LmN6PgotLS0KIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDEyICsrKysrKysrKysrKwogc2VydmljZS9p
bnN0YW5jZS5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvc2VydmljZS9pbnN0YW5jZS5jIGIvc2VydmljZS9pbnN0YW5jZS5jCmluZGV4IGFi
ZDFmMzQuLmMzNjAzNDMgMTAwNjQ0Ci0tLSBhL3NlcnZpY2UvaW5zdGFuY2UuYworKysgYi9zZXJ2
aWNlL2luc3RhbmNlLmMKQEAgLTU3NCw2ICs1NzQsMTUgQEAgaW5zdGFuY2VfZXhpdChzdHJ1Y3Qg
dWxvb3BfcHJvY2VzcyAqcCwgaW50IHJldCkKIAogCURFQlVHKDIsICJJbnN0YW5jZSAlczo6JXMg
ZXhpdCB3aXRoIGVycm9yIGNvZGUgJWQgYWZ0ZXIgJWxkIHNlY29uZHNcbiIsIGluLT5zcnYtPm5h
bWUsIGluLT5uYW1lLCByZXQsIHJ1bnRpbWUpOwogCisJLyoKKwlBY2NvcmRpbmcgdG8gbWFuIHdh
aXRwaWQoMikgZXhpdCBjb2RlcyBtaWdodCBiZToKKwkwIC0tIGV2ZXJ5dGhpbmcgaXMgT0sKKwlT
SUdOQUxMRUQgLS0gMSAtIDY0IC0gYW5kIHNpbmNlIHdlIHdhbnQgdGhlIHNhbWUgYmVoYXZpb3Ig
YXMgU0hFTEwsIHdlIGFkZCAxMjgKKwkJQHNlZSBodHRwOi8vdGxkcC5vcmcvTERQL2Ficy9odG1s
L2V4aXRjb2Rlcy5odG1sCisJMjU2IC0gNjU1MzYgLS0gcmVndWxhciBleGl0LCBzdHJpcCB0aGUg
Ym90dG9tIGJ5dGUgd2l0aCBXRVhJVFNUQVRVUyBtYWNyby4KKwkJQHNlZSBtYW4gd2FpdHBpZCgy
KQorCSovCisJaW4tPmV4aXRfY29kZSA9IFdJRkVYSVRFRChyZXQpID8gV0VYSVRTVEFUVVMocmV0
KSA6IFdJRlNJR05BTEVEKHJldCkgPyAxMjggKyBXVEVSTVNJRyhyZXQpIDogMTsKIAl1bG9vcF90
aW1lb3V0X2NhbmNlbCgmaW4tPnRpbWVvdXQpOwogCXNlcnZpY2VfZXZlbnQoImluc3RhbmNlLnN0
b3AiLCBpbi0+c3J2LT5uYW1lLCBpbi0+bmFtZSk7CiAKQEAgLTEwOTEsNiArMTEwMCw3IEBAIGlu
c3RhbmNlX2luaXQoc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluLCBzdHJ1Y3Qgc2VydmljZSAq
cywgc3RydWN0IGJsb2JfYXR0ciAqCiAJaW4tPnByb2MuY2IgPSBpbnN0YW5jZV9leGl0OwogCWlu
LT50ZXJtX3RpbWVvdXQgPSA1OwogCWluLT5zeXNsb2dfZmFjaWxpdHkgPSBMT0dfREFFTU9OOwor
CWluLT5leGl0X2NvZGUgPSAwOwogCiAJaW4tPl9zdGRvdXQuZmQuZmQgPSAtMjsKIAlpbi0+X3N0
ZG91dC5zdHJlYW0uc3RyaW5nX2RhdGEgPSB0cnVlOwpAQCAtMTEyNCw2ICsxMTM0LDggQEAgdm9p
ZCBpbnN0YW5jZV9kdW1wKHN0cnVjdCBibG9iX2J1ZiAqYiwgc3RydWN0IHNlcnZpY2VfaW5zdGFu
Y2UgKmluLCBpbnQgdmVyYm9zZSkKIAlpZiAoaW4tPmNvbW1hbmQpCiAJCWJsb2Jtc2dfYWRkX2Js
b2IoYiwgaW4tPmNvbW1hbmQpOwogCWJsb2Jtc2dfYWRkX3UzMihiLCAidGVybV90aW1lb3V0Iiwg
aW4tPnRlcm1fdGltZW91dCk7CisJaWYgKCFpbi0+cHJvYy5wZW5kaW5nKQorCQlibG9ibXNnX2Fk
ZF91MzIoYiwgImV4aXRfY29kZSIsIGluLT5leGl0X2NvZGUpOwogCiAJaWYgKCFhdmxfaXNfZW1w
dHkoJmluLT5lcnJvcnMuYXZsKSkgewogCQlzdHJ1Y3QgYmxvYm1zZ19saXN0X25vZGUgKnZhcjsK
ZGlmZiAtLWdpdCBhL3NlcnZpY2UvaW5zdGFuY2UuaCBiL3NlcnZpY2UvaW5zdGFuY2UuaAppbmRl
eCA0MmNjNGJlLi4wNWEyZmMzIDEwMDY0NAotLS0gYS9zZXJ2aWNlL2luc3RhbmNlLmgKKysrIGIv
c2VydmljZS9pbnN0YW5jZS5oCkBAIC02Miw2ICs2Miw3IEBAIHN0cnVjdCBzZXJ2aWNlX2luc3Rh
bmNlIHsKIAljaGFyICpzZWNjb21wOwogCWNoYXIgKnBpZGZpbGU7CiAJaW50IHN5c2xvZ19mYWNp
bGl0eTsKKwlpbnQgZXhpdF9jb2RlOwogCiAJdWludDMyX3QgdGVybV90aW1lb3V0OwogCXVpbnQz
Ml90IHJlc3Bhd25fdGltZW91dDsKLS0gCjIuMjEuMCAoQXBwbGUgR2l0LTEyMi4yKQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
