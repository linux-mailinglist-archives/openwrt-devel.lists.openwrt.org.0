Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F44313BD74
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 11:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRAra2ow4ESgMm/0twaIqzss9h6jaBdaXzrSsBAsyNc=; b=uSFh79iC+j/0cw
	azcOg0szo1M2IU2BrQNal7EK0iWO2DHredj7NhxFR+q3Q481875c85pu80omCfHewdQpeQf0ZseyX
	jKdt+UhBDwPdm5dA4s9GAnag93K75yq+ACn3uTLcVkJNDivPQkhpSh1uA80LJfmc3q2oCYJJnlUWc
	5+ygLq1grPbs+aEOxqY8HwSgfVBhwZGyFIS2yvtD7JIBIxc9r4meu4k8FxcCn99kOFsHHYRihs76h
	LHMnpkbRln9xVZ6z40iwoxeVnlmPLta1dqbFtVJFJ+smV9gndmUl/Ir4MZlWsmfPbCsVr46OOnWw/
	EwtDk7YuJikoTLb4+XfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfxI-0008Hw-VG; Wed, 15 Jan 2020 10:31:21 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfx5-00089W-OP
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 10:31:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6A967690A;
 Wed, 15 Jan 2020 11:31:06 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id af2aa80f;
 Wed, 15 Jan 2020 11:30:56 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Jan 2020 11:30:57 +0100
Message-Id: <20200115103057.7665-2-ynezz@true.cz>
In-Reply-To: <20200115103057.7665-1-ynezz@true.cz>
References: <20200115103057.7665-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_023107_943682_90B3C7C8 
X-CRM114-Status: UNSURE (   9.07  )
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
Subject: [OpenWrt-Devel] [PATCH procd 2/2] instance: fix pidfile attribute
 double free crash
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
IGluIG9yZGVyIHRvIGZpeAp1c2UtYWZ0ZXItZnJlZSwgYnV0IG1pc3NlZCBoYW5kbGluZyBvZiBv
bmUgYHBpZGZpbGVgIGF0dHJpYnV0ZSBjYXNlIGluCmluc3RhbmNlX2NvbmZpZ19tb3ZlKCkgd2hl
cmUgdGhlIG5ldyB2YWx1ZSBvZiBgcGlkZmlsZWAgaXMgYmVpbmcKY29waWVkL2Fzc2lnbmVkLiBT
b3VyY2Ugb2YgdGhpcyB2YWx1ZSBpcyB0aGVuIGZyZWUoKWQgaW4gZm9sbG93aW5nIGNhbGwKdG8g
aW5zdGFuY2VfZnJlZSgpIGFuZCB0aGVuIGFnYWluIGZvciAybmQgdGltZSBkdXJpbmcgdGhlIHNl
cnZpY2Ugc3RvcApjb21tYW5kIGhhbmRsaW5nLCBsZWFkaW5nIHRvIGRvdWJsZSBmcmVlIGNyYXNo
OgoKICMwICB1bm1hcF9jaHVuayBhdCBzcmMvbWFsbG9jL21hbGxvYy5jOjUxNQogIzEgIGZyZWUg
YXQgc3JjL21hbGxvYy9tYWxsb2MuYzo1MjYKICMyICBpbnN0YW5jZV9mcmVlIChpbj0weGQ1ZTMw
MCkgYXQgaW5zdGFuY2UuYzoxMTAwCiAjMyAgaW5zdGFuY2VfZGVsZXRlIChpbj0weGQ1ZTMwMCkg
YXQgaW5zdGFuY2UuYzo1NTkKICM0ICBpbnN0YW5jZV9zdG9wIChpbj0weGQ1ZTMwMCwgaGFsdD10
cnVlKSBhdCBpbnN0YW5jZS5jOjYxMQoKUmVmOiBGUyMyNzIzCkNjOiBEYW5pZWwgR29sbGUgPGRh
bmllbEBtYWtyb3RvcGlhLm9yZz4KRml4ZXM6IGE1YWYzM2NlOWExNiAoImluc3RhbmNlOiBzdHJk
dXAgc3RyaW5nIGF0dHJpYnV0ZXMiKQpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6PgotLS0KIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2aWNl
L2luc3RhbmNlLmMgYi9zZXJ2aWNlL2luc3RhbmNlLmMKaW5kZXggY2U1MjMzODA3ZGJiLi4yNDVi
OTYyOWQ5OWEgMTAwNjQ0Ci0tLSBhL3NlcnZpY2UvaW5zdGFuY2UuYworKysgYi9zZXJ2aWNlL2lu
c3RhbmNlLmMKQEAgLTEwMzEsNyArMTAzMSw2IEBAIGluc3RhbmNlX2NvbmZpZ19tb3ZlKHN0cnVj
dCBzZXJ2aWNlX2luc3RhbmNlICppbiwgc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluX3NyCiAJ
YmxvYm1zZ19saXN0X21vdmUoJmluLT5qYWlsLm1vdW50LCAmaW5fc3JjLT5qYWlsLm1vdW50KTsK
IAlpbi0+dHJpZ2dlciA9IGluX3NyYy0+dHJpZ2dlcjsKIAlpbi0+Y29tbWFuZCA9IGluX3NyYy0+
Y29tbWFuZDsKLQlpbi0+cGlkZmlsZSA9IGluX3NyYy0+cGlkZmlsZTsKIAlpbi0+cmVzcGF3biA9
IGluX3NyYy0+cmVzcGF3bjsKIAlpbi0+cmVzcGF3bl9yZXRyeSA9IGluX3NyYy0+cmVzcGF3bl9y
ZXRyeTsKIAlpbi0+cmVzcGF3bl90aHJlc2hvbGQgPSBpbl9zcmMtPnJlc3Bhd25fdGhyZXNob2xk
OwpAQCAtMTA0Miw2ICsxMDQxLDEwIEBAIGluc3RhbmNlX2NvbmZpZ19tb3ZlKHN0cnVjdCBzZXJ2
aWNlX2luc3RhbmNlICppbiwgc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluX3NyCiAJaW4tPm5v
ZGUuYXZsLmtleSA9IGluX3NyYy0+bm9kZS5hdmwua2V5OwogCWluLT5zeXNsb2dfZmFjaWxpdHkg
PSBpbl9zcmMtPnN5c2xvZ19mYWNpbGl0eTsKIAorCWZyZWUoaW4tPnBpZGZpbGUpOworCWlmIChp
bl9zcmMtPnBpZGZpbGUpCisJCWluLT5waWRmaWxlID0gc3RyZHVwKGluX3NyYy0+cGlkZmlsZSk7
CisKIAlmcmVlKGluLT5jb25maWcpOwogCWluLT5jb25maWcgPSBpbl9zcmMtPmNvbmZpZzsKIAlp
bl9zcmMtPmNvbmZpZyA9IE5VTEw7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
