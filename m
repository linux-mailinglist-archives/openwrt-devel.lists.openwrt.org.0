Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11185140FC8
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 18:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=qht8u0Yh3FjCus6mvw5lXmNNKP3Di7recqnUwKwfP7k=; b=agDgRH26Uz+jlL
	jsXLluAF8/yq73R2NwmACnSqg0YB2ZQ9j+tcoZxqPBTOKYel7LHh3UwwqMSr1JdarSkTrpqO/jI9h
	djhoMEGJG1PLcSAzjdBhbFEzfpuR2VARXR9EN1q2WgRbTP4w0XDXsMaXy4QiVt+1K/lLHwPyoMIVM
	J0IUj90kXHGyxYL8fSYcXPh7c7F81VoWEj+s+pRe+hk/i+EyfK8LQbNsXAJQt7vIsKL6SyPUFhm+Q
	twKKX/Ce0UoOcE1XYGETvQlGwqD9XGxazvT9gF+UXAFFVNGFB4hNhoZIMYPVH6o9sM1JKE7ZOQLLj
	dya5q0Cq7gpYdRxBgPZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isVKk-0004qS-Lr; Fri, 17 Jan 2020 17:22:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isVKa-0004pc-BG
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 17:22:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6336C597E;
 Fri, 17 Jan 2020 18:22:43 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6fef6834;
 Fri, 17 Jan 2020 18:22:32 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Jan 2020 18:22:37 +0100
Message-Id: <20200117172237.2959-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <20200116091618.GB1404@makrotopia.org>
Patch-Headers-Readers: Hi! :-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_092248_535927_01152BF4 
X-CRM114-Status: UNSURE (   7.71  )
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
Subject: [OpenWrt-Devel] [PATCH procd v4] instance: fix pidfile and seccomp
 attributes double free
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0IGE1YWYzM2NlOWExNiAoImluc3RhbmNlOiBzdHJkdXAgc3RyaW5nIGF0dHJpYnV0ZXMi
KSBoYXMKaW50cm9kdWNlZCBkdXBsaWNhdGlvbiBvZiB2YXJpb3VzIHN0cmluZyBhdHRyaWJ1dGVz
IGluIG9yZGVyIHRvIGZpeAp1c2UtYWZ0ZXItZnJlZSwgYnV0IG1pc3NlZCBoYW5kbGluZyBvZiBg
cGlkZmlsZWAgYW5kIGBzZWNjb21wYCBhdHRyaWJ1dGUKY2FzZXMgaW4gaW5zdGFuY2VfY29uZmln
X21vdmUoKSB3aGVyZSB0aGUgbmV3IHZhbHVlIG9mIGBwaWRmaWxlYCBvcgpgc2VjY29tcGAgaXMg
YmVpbmcgY29waWVkL2Fzc2lnbmVkLiBTb3VyY2Ugb2YgdGhpcyB2YWx1ZXMgaXMgdGhlbgpmcmVl
KClkIGluIHN1YnNlcXVlbnQgY2FsbCB0byBpbnN0YW5jZV9mcmVlKCkgYW5kIHRoZW4gYWdhaW4g
Zm9yIDJuZAp0aW1lIGR1cmluZyB0aGUgc2VydmljZSBzdG9wIGNvbW1hbmQgaGFuZGxpbmcsIGxl
YWRpbmcgdG8gZG91YmxlIGZyZWUKY3Jhc2g6CgogIzAgIHVubWFwX2NodW5rIGF0IHNyYy9tYWxs
b2MvbWFsbG9jLmM6NTE1CiAjMSAgZnJlZSBhdCBzcmMvbWFsbG9jL21hbGxvYy5jOjUyNgogIzIg
IGluc3RhbmNlX2ZyZWUgKGluPTB4ZDVlMzAwKSBhdCBpbnN0YW5jZS5jOjExMDAKICMzICBpbnN0
YW5jZV9kZWxldGUgKGluPTB4ZDVlMzAwKSBhdCBpbnN0YW5jZS5jOjU1OQogIzQgIGluc3RhbmNl
X3N0b3AgKGluPTB4ZDVlMzAwLCBoYWx0PXRydWUpIGF0IGluc3RhbmNlLmM6NjExCgpXaGlsZSBh
dCBpdCwgYWRkIG1pc3NpbmcgaGFuZGxpbmcgb2YgamFpbC5uYW1lIGFuZCBqYWlsLmhvc3RuYW1l
CmF0dHJpYnV0ZXMgYXMgd2VsbC4KClJlZjogRlMjMjcyMwpGaXhlczogYTVhZjMzY2U5YTE2ICgi
aW5zdGFuY2U6IHN0cmR1cCBzdHJpbmcgYXR0cmlidXRlcyIpClNpZ25lZC1vZmYtYnk6IERhbmll
bCBHb2xsZSA8ZGFuaWVsQG1ha3JvdG9waWEub3JnPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0
aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KCmNoYW5nZXMgc2luY2UgdjM6CgogKiBwcmV2ZW50IGRv
dWJsZSBmcmVlLCBhZ2FpbgogKiBmb2xsb3cgRFJZIGFuZCB1c2UgaW5zdGFuY2VfY29uZmlnX21v
dmVfc3RyZHVwCiAKIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDIyICsrKysrKysrKysrKysrKysrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3NlcnZpY2UvaW5zdGFuY2UuYyBiL3NlcnZpY2UvaW5zdGFuY2UuYwppbmRleCBj
ZTUyMzM4MDdkYmIuLmVlMjU4Njg3YzNjZiAxMDA2NDQKLS0tIGEvc2VydmljZS9pbnN0YW5jZS5j
CisrKyBiL3NlcnZpY2UvaW5zdGFuY2UuYwpAQCAtMTAxOCw2ICsxMDE4LDIxIEBAIGluc3RhbmNl
X2NvbmZpZ19jbGVhbnVwKHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlICppbikKIAlibG9ibXNnX2xp
c3RfZnJlZSgmaW4tPmphaWwubW91bnQpOwogfQogCitzdGF0aWMgdm9pZAoraW5zdGFuY2VfY29u
ZmlnX21vdmVfc3RyZHVwKGNoYXIgKipkc3QsIGNoYXIgKnNyYykKK3sKKwlpZiAoISpkc3QpCisJ
CXJldHVybjsKKworCWZyZWUoKmRzdCk7CisJKmRzdCA9IE5VTEw7CisKKwlpZiAoIXNyYykKKwkJ
cmV0dXJuOworCisJKmRzdCA9IHN0cmR1cChzcmMpOworfQorCiBzdGF0aWMgdm9pZAogaW5zdGFu
Y2VfY29uZmlnX21vdmUoc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluLCBzdHJ1Y3Qgc2Vydmlj
ZV9pbnN0YW5jZSAqaW5fc3JjKQogewpAQCAtMTAzMSwxNyArMTA0NiwyMCBAQCBpbnN0YW5jZV9j
b25maWdfbW92ZShzdHJ1Y3Qgc2VydmljZV9pbnN0YW5jZSAqaW4sIHN0cnVjdCBzZXJ2aWNlX2lu
c3RhbmNlICppbl9zcgogCWJsb2Jtc2dfbGlzdF9tb3ZlKCZpbi0+amFpbC5tb3VudCwgJmluX3Ny
Yy0+amFpbC5tb3VudCk7CiAJaW4tPnRyaWdnZXIgPSBpbl9zcmMtPnRyaWdnZXI7CiAJaW4tPmNv
bW1hbmQgPSBpbl9zcmMtPmNvbW1hbmQ7Ci0JaW4tPnBpZGZpbGUgPSBpbl9zcmMtPnBpZGZpbGU7
CiAJaW4tPnJlc3Bhd24gPSBpbl9zcmMtPnJlc3Bhd247CiAJaW4tPnJlc3Bhd25fcmV0cnkgPSBp
bl9zcmMtPnJlc3Bhd25fcmV0cnk7CiAJaW4tPnJlc3Bhd25fdGhyZXNob2xkID0gaW5fc3JjLT5y
ZXNwYXduX3RocmVzaG9sZDsKIAlpbi0+cmVzcGF3bl90aW1lb3V0ID0gaW5fc3JjLT5yZXNwYXdu
X3RpbWVvdXQ7CiAJaW4tPm5hbWUgPSBpbl9zcmMtPm5hbWU7CiAJaW4tPnRyYWNlID0gaW5fc3Jj
LT50cmFjZTsKLQlpbi0+c2VjY29tcCA9IGluX3NyYy0+c2VjY29tcDsKIAlpbi0+bm9kZS5hdmwu
a2V5ID0gaW5fc3JjLT5ub2RlLmF2bC5rZXk7CiAJaW4tPnN5c2xvZ19mYWNpbGl0eSA9IGluX3Ny
Yy0+c3lzbG9nX2ZhY2lsaXR5OwogCisJaW5zdGFuY2VfY29uZmlnX21vdmVfc3RyZHVwKCZpbi0+
cGlkZmlsZSwgaW5fc3JjLT5waWRmaWxlKTsKKwlpbnN0YW5jZV9jb25maWdfbW92ZV9zdHJkdXAo
JmluLT5zZWNjb21wLCBpbl9zcmMtPnNlY2NvbXApOworCWluc3RhbmNlX2NvbmZpZ19tb3ZlX3N0
cmR1cCgmaW4tPmphaWwubmFtZSwgaW5fc3JjLT5qYWlsLm5hbWUpOworCWluc3RhbmNlX2NvbmZp
Z19tb3ZlX3N0cmR1cCgmaW4tPmphaWwuaG9zdG5hbWUsIGluX3NyYy0+amFpbC5ob3N0bmFtZSk7
CisKIAlmcmVlKGluLT5jb25maWcpOwogCWluLT5jb25maWcgPSBpbl9zcmMtPmNvbmZpZzsKIAlp
bl9zcmMtPmNvbmZpZyA9IE5VTEw7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
