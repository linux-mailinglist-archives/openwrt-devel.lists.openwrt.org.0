Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8C413D685
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 10:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJDo2YMpDax0rMaU/7Itg6rNBSTMmBg39Wd5YI8N+wU=; b=OMlSWlh8mFDJbW
	HHzEVkE8ktWUS5vaB+uvOvDeYyqInWZjftmo/E/uJ0kpfD4jHppw5of9W1LnnsZpmGCgGeybvbYU3
	nYOEQ7nSGttX0BvxtukAOgHZDc+/d03iq22+7j7gyjoAtIg7z2molhfPhPOcC6W8TdT/zalzc10Qr
	cwifO7YX8zFMoPwzv+UXTG545+mk6+LH+sIGGywzlUr4uBKkRGQGHdBdUpG1D7ofVDcCTIhcFhJAC
	qGu6bx9xPbu1PC9Liky45M3YR7LUvZOWaWtut4tmX3FWLXQwkIz+pNNfmByKyM8vWPpdMzFMMcH3M
	p08rSeUTLgL30AXvmMdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1E4-0000xF-FY; Thu, 16 Jan 2020 09:14:04 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1Dg-0000iK-6U
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 09:13:44 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <ynezz@true.cz>)
 id 1is1Dc-0003CA-MH; Thu, 16 Jan 2020 10:13:37 +0100
Date: Thu, 16 Jan 2020 11:13:22 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
Message-ID: <20200116091322.GA323825@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_011340_254943_6B016ECF 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3] instance: fix pidfile attribute double
 free crash
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKSGkgRmVsaXgsCgpzZWVtcyBsaWtlIG1vcmUgdGhpbmdzIHdlcmUgd3Jvbmcgd2l0
aCBpbnN0YW5jZV9jb25maWdfbW92ZSgpLCBzb21lCm9mIHRoZSBqYWlsIGF0dHJpYnV0ZXMgd2Vy
ZSBtaXNzaW5nIGFzIHdlbGwuLi4KCi0tLQpDb21taXQgYTVhZjMzY2U5YTE2ICgiaW5zdGFuY2U6
IHN0cmR1cCBzdHJpbmcgYXR0cmlidXRlcyIpIGhhcwppbnRyb2R1Y2VkIGR1cGxpY2F0aW9uIG9m
IHZhcmlvdXMgc3RyaW5nIGF0dHJpYnV0ZXMgaW4gb3JkZXIgdG8gZml4CnVzZS1hZnRlci1mcmVl
LCBidXQgbWlzc2VkIGhhbmRsaW5nIG9mIGBwaWRmaWxlYCBhbmQgYHNlY2NvbXBgIGF0dHJpYnV0
ZQpjYXNlcyBpbiBpbnN0YW5jZV9jb25maWdfbW92ZSgpIHdoZXJlIHRoZSBuZXcgdmFsdWUgb2Yg
YHBpZGZpbGVgIG9yCmBzZWNjb21wYCBpcyBiZWluZyBjb3BpZWQvYXNzaWduZWQuIFNvdXJjZSBv
ZiB0aGlzIHZhbHVlcyBpcyB0aGVuCmZyZWUoKWQgaW4gc3Vic2VxdWVudCBjYWxsIHRvIGluc3Rh
bmNlX2ZyZWUoKSBhbmQgdGhlbiBhZ2FpbiBmb3IgMm5kCnRpbWUgZHVyaW5nIHRoZSBzZXJ2aWNl
IHN0b3AgY29tbWFuZCBoYW5kbGluZywgbGVhZGluZyB0byBkb3VibGUgZnJlZQpjcmFzaDoKCiAj
MCAgdW5tYXBfY2h1bmsgYXQgc3JjL21hbGxvYy9tYWxsb2MuYzo1MTUKICMxICBmcmVlIGF0IHNy
Yy9tYWxsb2MvbWFsbG9jLmM6NTI2CiAjMiAgaW5zdGFuY2VfZnJlZSAoaW49MHhkNWUzMDApIGF0
IGluc3RhbmNlLmM6MTEwMAogIzMgIGluc3RhbmNlX2RlbGV0ZSAoaW49MHhkNWUzMDApIGF0IGlu
c3RhbmNlLmM6NTU5CiAjNCAgaW5zdGFuY2Vfc3RvcCAoaW49MHhkNWUzMDAsIGhhbHQ9dHJ1ZSkg
YXQgaW5zdGFuY2UuYzo2MTEKClJlZjogRlMjMjcyMwpGaXhlczogYTVhZjMzY2U5YTE2ICgiaW5z
dGFuY2U6IHN0cmR1cCBzdHJpbmcgYXR0cmlidXRlcyIpClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb2xsZSA8ZGFuaWVs
QG1ha3JvdG9waWEub3JnPgotLS0KIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDI2ICsrKysrKysrKysr
KysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2aWNlL2luc3RhbmNlLmMgYi9zZXJ2aWNlL2luc3Rh
bmNlLmMKaW5kZXggY2U1YjBiZi4uYzJlYmM3NiAxMDA2NDQKLS0tIGEvc2VydmljZS9pbnN0YW5j
ZS5jCisrKyBiL3NlcnZpY2UvaW5zdGFuY2UuYwpAQCAtMTA0MCwxNyArMTA0MCwzOSBAQCBpbnN0
YW5jZV9jb25maWdfbW92ZShzdHJ1Y3Qgc2VydmljZV9pbnN0YW5jZSAqaW4sIHN0cnVjdCBzZXJ2
aWNlX2luc3RhbmNlICppbl9zcgogCWJsb2Jtc2dfbGlzdF9tb3ZlKCZpbi0+amFpbC5tb3VudCwg
JmluX3NyYy0+amFpbC5tb3VudCk7CiAJaW4tPnRyaWdnZXIgPSBpbl9zcmMtPnRyaWdnZXI7CiAJ
aW4tPmNvbW1hbmQgPSBpbl9zcmMtPmNvbW1hbmQ7Ci0JaW4tPnBpZGZpbGUgPSBpbl9zcmMtPnBp
ZGZpbGU7CiAJaW4tPnJlc3Bhd24gPSBpbl9zcmMtPnJlc3Bhd247CiAJaW4tPnJlc3Bhd25fcmV0
cnkgPSBpbl9zcmMtPnJlc3Bhd25fcmV0cnk7CiAJaW4tPnJlc3Bhd25fdGhyZXNob2xkID0gaW5f
c3JjLT5yZXNwYXduX3RocmVzaG9sZDsKIAlpbi0+cmVzcGF3bl90aW1lb3V0ID0gaW5fc3JjLT5y
ZXNwYXduX3RpbWVvdXQ7CiAJaW4tPm5hbWUgPSBpbl9zcmMtPm5hbWU7CiAJaW4tPnRyYWNlID0g
aW5fc3JjLT50cmFjZTsKLQlpbi0+c2VjY29tcCA9IGluX3NyYy0+c2VjY29tcDsKIAlpbi0+bm9k
ZS5hdmwua2V5ID0gaW5fc3JjLT5ub2RlLmF2bC5rZXk7CiAJaW4tPnN5c2xvZ19mYWNpbGl0eSA9
IGluX3NyYy0+c3lzbG9nX2ZhY2lsaXR5OwogCisJZnJlZShpbi0+cGlkZmlsZSk7CisJaWYgKGlu
X3NyYy0+cGlkZmlsZSkKKwkJaW4tPnBpZGZpbGUgPSBzdHJkdXAoaW5fc3JjLT5waWRmaWxlKTsK
KwllbHNlCisJCWluLT5waWRmaWxlID0gTlVMTDsKKworCWZyZWUoaW4tPnNlY2NvbXApOworCWlm
IChpbl9zcmMtPnNlY2NvbXApCisJCWluLT5zZWNjb21wID0gc3RyZHVwKGluX3NyYy0+c2VjY29t
cCk7CisJZWxzZQorCQlpbi0+c2VjY29tcCA9IE5VTEw7CisKKwlmcmVlKGluLT5qYWlsLm5hbWUp
OworCWlmIChpbl9zcmMtPmphaWwubmFtZSkKKwkJaW4tPmphaWwubmFtZSA9IHN0cmR1cChpbl9z
cmMtPmphaWwubmFtZSk7CisJZWxzZQorCQlpbi0+amFpbC5uYW1lID0gTlVMTDsKKworCWZyZWUo
aW4tPmphaWwuaG9zdG5hbWUpOworCWlmIChpbl9zcmMtPmphaWwuaG9zdG5hbWUpCisJCWluLT5q
YWlsLmhvc3RuYW1lID0gc3RyZHVwKGluX3NyYy0+amFpbC5ob3N0bmFtZSk7CisJZWxzZQorCQlp
bi0+amFpbC5ob3N0bmFtZSA9IE5VTEw7CisKIAlmcmVlKGluLT5jb25maWcpOwogCWluLT5jb25m
aWcgPSBpbl9zcmMtPmNvbmZpZzsKIAlpbl9zcmMtPmNvbmZpZyA9IE5VTEw7Ci0tIAoyLjI0LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
