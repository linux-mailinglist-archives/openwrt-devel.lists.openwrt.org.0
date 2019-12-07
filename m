Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02AC115FCF
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 00:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xojc+mdy9VW69XEFGJ3dn3VgCGIPumna9SzStBUvgCk=; b=egBiogkuY0RbnQ
	jn8WlmIc1MedCZtSHKI58mYIDL9C+G/MWq/YRa/CbAxYtmm02vcld2syASwwJBIQUzAimqJRsaD8D
	5YioXgbtItwAedxlPxgDrPfWv4MtSqxMQfB/dVnzATwK095cCJIfcclBV1iaC87P35dNvW23fkUUn
	TE7JD7Vr6gJDtrPI9GNFqOINjOuVkCwbiwuJSDcXMRhv8g5DCVGqE6oH5vg1kNCHnD34DUDeX0rr/
	EIfVDpobMr2UIt7M+15H7gFBxeIO3JoGV4rW1aq++965fIB6P/sZY6PAfHRCT9IdGlM346B00H/NF
	ZF5W0V4J5M4mP1PLv/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idj7E-0003nH-E8; Sat, 07 Dec 2019 23:03:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idj6Q-00037B-Ag
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 23:03:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B2EDA41A1;
 Sun,  8 Dec 2019 00:03:03 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 67ad72fc;
 Sun, 8 Dec 2019 00:02:53 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:52:55 +0100
Message-Id: <20191207225257.14135-3-ynezz@true.cz>
In-Reply-To: <20191207225257.14135-1-ynezz@true.cz>
References: <20191207225257.14135-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_150306_539098_1AF9A558 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 3/5] tests: cram: Lua: add test case for
 uci_get_errorstr
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

SW4gb3JkZXIgdG8gZXh0ZW5kIHRlc3QgY292ZXJhZ2UgYW5kIGhlbHAgdGVzdGluZyByZWZhY3Rv
cmluZy4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQog
dGVzdHMvY3JhbS9jb25maWcvYnJva2VuIHwgMSArCiB0ZXN0cy9jcmFtL2x1YS9iYXNpYy5sdWEg
fCAyICsrCiB0ZXN0cy9jcmFtL3Rlc3RfdWNpbHVhLnQgfCAxICsKIDMgZmlsZXMgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvY3JhbS9jb25maWcvYnJv
a2VuCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY3JhbS9jb25maWcvYnJva2VuIGIvdGVzdHMvY3JhbS9j
b25maWcvYnJva2VuCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZDJl
Y2MwMTU4ZTY4Ci0tLSAvZGV2L251bGwKKysrIGIvdGVzdHMvY3JhbS9jb25maWcvYnJva2VuCkBA
IC0wLDAgKzEgQEAKK2NvbmZpZyBhbGlhcycgJ2EnCmRpZmYgLS1naXQgYS90ZXN0cy9jcmFtL2x1
YS9iYXNpYy5sdWEgYi90ZXN0cy9jcmFtL2x1YS9iYXNpYy5sdWEKaW5kZXggY2ViNzA2ZjY5NzNl
Li5mMDA1MjY0NGMwMGUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NyYW0vbHVhL2Jhc2ljLmx1YQorKysg
Yi90ZXN0cy9jcmFtL2x1YS9iYXNpYy5sdWEKQEAgLTQyLDMgKzQyLDUgQEAgbG9jYWwgdCA9IGM6
Z2V0KCJuZXR3b3JrIiwgImxhbiIsICJkbnMiKQogQSgjdCA9PSAyKQogQSh0WzFdID09ICJuczEu
a2luZy5iYW5pay5jeiIpCiBBKHRbMl0gPT0gIm5zMi5vcGVud3J0Lm9yZyIpCisKK3ByaW50KGM6
Z2V0X2FsbCgiYnJva2VuIikpCmRpZmYgLS1naXQgYS90ZXN0cy9jcmFtL3Rlc3RfdWNpbHVhLnQg
Yi90ZXN0cy9jcmFtL3Rlc3RfdWNpbHVhLnQKaW5kZXggMTU0NGUyM2MxYmY0Li5jZmUxZjJlMGUz
NjAgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NyYW0vdGVzdF91Y2lsdWEudAorKysgYi90ZXN0cy9jcmFt
L3Rlc3RfdWNpbHVhLnQKQEAgLTU2LDMgKzU2LDQgQEAgcnVuIGJhc2ljIEx1YSB0ZXN0czoKICAg
cHJvdG86IGRoY3AKICAgLmFub255bW91czogZmFsc2UKICAgYWxpYXNlczogYyBkCisgIG5pbFx0
dWNpOiBQYXJzZSBlcnJvciAoRU9GIHdpdGggdW50ZXJtaW5hdGVkICcpIGF0IGxpbmUgMSwgYnl0
ZSAxOCAoZXNjKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
