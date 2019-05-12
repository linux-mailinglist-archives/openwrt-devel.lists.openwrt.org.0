Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6362B1ADE8
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 21:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZZcfuPAiukTtjONHLYpC5NtSqX3LeE5zW3nuw1xOXhg=; b=rKjgvNb1oVaT2+
	nRDBZ/A3UgWiz8igpNCVAKScxuvhwSxINEnToQ8hVIFo/T/ehPgH0fMkpaQm9B8A6bvbjkjZeCPAK
	FNGqvzNE7FrgSjJGUsOldmMtnN/Yq+uDl4BOwfw/X1QVawWzN/YlxU364zmlCzEd23f2IfhcR5tnH
	ATcCxhXAYw5Px5dc4dXC/tphYJbNrpIMQ5J06/rSJLKOtO8ep5YHVjzByOWZM1YKFwS4ag9VYKulN
	+3cO1rHwDngTNztUL39EH+fX1Qp3TqF6hT1yUePJUkhVYCwsFUO8fizbHpUop57337RjxyDN0CzTD
	AbZemcB2xwWLb5LIKYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtvC-0002U2-Qd; Sun, 12 May 2019 19:14:06 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtv7-0002Tg-25
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 19:14:02 +0000
Received: by mail-lf1-x144.google.com with SMTP id x132so7456950lfd.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 May 2019 12:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIYFmxm1n3uF/E1x1yYxtGjPizLlagxJLwD/7DaOqeE=;
 b=MyQ0yr0WxD9xHUpfrPQoRxGCrbX01ejRQOtHyvOTDWbGTOxZBqPyF0Omb/gFOIzxwr
 9AscTJz/D9Z7rCpk3ysrBShI+2MMQx+oYfnvhWMJXkJcVE35moCMoPSQg7N0Y/sPz671
 KX4eocbIcnw2vjSulH7t4AldcZHM4vrmzA25oHISUQASJqVkjUX7MLg3s4fCxYArCFRJ
 j5cFWNZxiPkbJKcxqS3BEr8KqiMqcIhA8uBB+sqhey2NRrhNsxu2KKyy8Og4lLN/rRv5
 5I7JhRIadHB+PLfITYr+V6s7ZM/JRsVvRPqM3LbUEa6obARAZNN1qZ1q69GA+cqoHKQG
 d8VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIYFmxm1n3uF/E1x1yYxtGjPizLlagxJLwD/7DaOqeE=;
 b=tEW7bOipw81kzalufVPB5DIQyYfo1I+wsP4+DTzGvwh6JhvhU5Olwf1Avb6iMS6dm5
 HeK4Fa7cRLvfZt3kr/MNX5iI46eDxkD7u2yDXppn/6PuMsXWwC0Kej9dUvD86VxM8Am5
 mXotsEZlMVBVC5Yvx0lJj0V2wO3DhhnkWQ+Nt+2mscO5HRPaHTmTKCmVuw11kz62rULt
 v7L3tU2QnHHZ2Omh/IgAp+EZG9pAvEEbSYt6Ac2LIHrzatWhbwJHxEtSt1xyltXVOJgQ
 +QvtLhwvX+M8n8kl/bqcYwjDCI7o9id2ssugwBFKjRqb6G51G3e3plmu7Ul0ReUJOy8a
 oaUg==
X-Gm-Message-State: APjAAAW8KUdZ1kH9tdN4d26OgDmgy8ond0w2VE/HReg9KBrNX3ZZj2ss
 ZLZntQ27V9gZ1JGyc0AcGktLHw==
X-Google-Smtp-Source: APXvYqwbEenMVXdEqds1MwODFnaWuBZmJe614uykxaDb67g+UAUdX1cBJxl6EBVC/6F86uyt/lnaqQ==
X-Received: by 2002:a19:282:: with SMTP id 124mr11512916lfc.131.1557688437319; 
 Sun, 12 May 2019 12:13:57 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id f9sm2697581ljf.69.2019.05.12.12.13.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 12:13:55 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sun, 12 May 2019 21:13:17 +0200
Message-Id: <20190512191317.32061-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_121401_166280_8E761C76 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2] gemini: Support sysupgrade on DIR-685
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Petr Stetiar <ynezz@true.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 openwrt-devel@lists.openwrt.org, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBtYWtlcyBzeXN1cGdyYWRlIHdvcmsgb24gdGhlIEQtTGluayBESVItNjg1IGFmdGVyCmlu
aXRpYWwgZmFjdG9yeSBpbnN0YWxsLgoKV2UgY3JlYXRlIHRoZSBwbGF0Zm9ybS5zaCBzY3JpcHQg
dG8gc3VwcG9ydCBzeXN1cGdyYWRlCm9uIG1vcmUgdGFyZ2V0cyBhcyB3ZSBtb3ZlIG9uIHdpdGgg
c3lzdXBncmFkZSBzdXBwb3J0LgoKQ2M6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+ClNp
Z25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KLS0t
CkNoYW5nZUxvZyB2MS0+djI6Ci0gQXBwZW5kIG1ldGFkYXRhIHRvIHN5c3VwZ3JhZGUgaW1hZ2UK
LSBSZXF1aXJlIG1ldGFkYXRhIGluIHBsYXRmb3JtLnNoCi0gU3RyaXAgY29tbWVudHMKLS0tCiAu
Li4vZ2VtaW5pL2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggfCA1MCArKysrKysr
KysrKysrKysrKysrCiB0YXJnZXQvbGludXgvZ2VtaW5pL2ltYWdlL01ha2VmaWxlICAgICAgICAg
ICAgfCAgNSArLQogMiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2dlbWluaS9iYXNlLWZpbGVzL2xp
Yi91cGdyYWRlL3BsYXRmb3JtLnNoCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbWluaS9i
YXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L2dlbWluaS9i
YXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uNWY3YTIxMTdjYjNiCi0tLSAvZGV2L251bGwKKysrIGIvdGFyZ2V0
L2xpbnV4L2dlbWluaS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCkBAIC0wLDAg
KzEsNTAgQEAKK1JFUVVJUkVfSU1BR0VfTUVUQURBVEE9MQorCit3cmdnX2dldF9pbWFnZV9tYWdp
YygpIHsKKwlnZXRfaW1hZ2UgIiRAIiB8IGRkIGJzPTQgY291bnQ9MSBza2lwPTggMj4vZGV2L251
bGwgfCBoZXhkdW1wIC12IC1uIDQgLWUgJzEvMSAiJTAyeCInCit9CisKK3BsYXRmb3JtX2ZpbmRf
cGFydF9zaXplKCkgeworCWxvY2FsIGZpcnN0IGRldiBzaXplIGVyYXNlc2l6ZSBuYW1lCisJd2hp
bGUgcmVhZCBkZXYgc2l6ZSBlcmFzZXNpemUgbmFtZTsgZG8KKwkJbmFtZT0ke25hbWUjJyInfTsg
bmFtZT0ke25hbWUlJyInfQorCQlbICIkbmFtZSIgPSAiJDEiIF0gJiYgeworCQkJZWNobyAiJHNp
emUiCisJCQlicmVhaworCQl9CisJZG9uZSA8IC9wcm9jL210ZAorfQorCitwbGF0Zm9ybV9jaGVj
a19pbWFnZSgpIHsKKwlsb2NhbCBib2FyZD0kKGJvYXJkX25hbWUpCisKKwljYXNlICIkYm9hcmQi
IGluCisJZGxpbmssZGlyLTY4NSApCisJCWxvY2FsIG1hZ2ljPSQod3JnZ19nZXRfaW1hZ2VfbWFn
aWMgIiQxIikKKwkJWyAiJG1hZ2ljIiAhPSAiMjEwMzA4MjAiIF0gJiYgeworCQkJZWNobyAiSW52
YWxpZCBpbWFnZS4gQmFkIG1hZ2ljIGZvciBESVItNjg1LiIKKwkJCXJldHVybiAxCisJCX0KKwkJ
ZWNobyAiSW1hZ2UgbG9va3MgT0siCisJCXJldHVybiAwCisJCTs7CisJZXNhYworCisJZWNobyAi
U3lzdXBncmFkZSBpcyBub3QgeWV0IHN1cHBvcnRlZCBvbiAkYm9hcmQuIgorCXJldHVybiAxCit9
CisKK3BsYXRmb3JtX2RvX3VwZ3JhZGUoKSB7CisJbG9jYWwgYm9hcmQ9JChib2FyZF9uYW1lKQor
CisJdiAiYm9hcmQ9JGJvYXJkIgorCWNhc2UgIiRib2FyZCIgaW4KKwlkbGluayxkaXItNjg1ICkK
KwkJUEFSVF9OQU1FPWZpcm13YXJlCisJCWRlZmF1bHRfZG9fdXBncmFkZSAiJEFSR1YiCisJCTs7
CisJKikKKworCQk7OworCWVzYWMKK30KZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW1pbmkv
aW1hZ2UvTWFrZWZpbGUgYi90YXJnZXQvbGludXgvZ2VtaW5pL2ltYWdlL01ha2VmaWxlCmluZGV4
IDhmZWMyNTBmMTg2YS4uMzMzOWNkMjQ2N2E5IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvZ2Vt
aW5pL2ltYWdlL01ha2VmaWxlCisrKyBiL3RhcmdldC9saW51eC9nZW1pbmkvaW1hZ2UvTWFrZWZp
bGUKQEAgLTExNSw2ICsxMTUsNyBAQCBkZWZpbmUgRGV2aWNlL0RlZmF1bHQKIAlLRVJORUxfTkFN
RSA6PSB6SW1hZ2UKIAlLRVJORUwgOj0ga2VybmVsLWJpbiB8IGFwcGVuZC1kdGIKIAlCTE9DS1NJ
WkUgOj0gMTI4aworCVNVUFBPUlRFRF9ERVZJQ0VTIDo9ICQoc3Vic3QgXywkKGNvbW1hKSwkKDEp
KQogZW5kZWYKIAogIyBBIHJlYXNvbmFibGUgc2V0IG9mIGRlZmF1bHQgcGFja2FnZXMgaGFuZGxp
bmcgdGhlIE5BUyB0eXBlCkBAIC0xNDMsOSArMTQ0LDExIEBAIGRlZmluZSBEZXZpY2UvZGxpbmtf
ZGlyLTY4NQogCURFVklDRV9QQUNLQUdFUyA6PSAkKEdFTUlOSV9OQVNfUEFDS0FHRVMpIFwKIAkJ
CWttb2Qtc3dpdGNoLXJ0bDgzNjZyYiBzd2NvbmZpZyBcCiAJCQlrbW9kLXJ0MjgwMC1wY2kKLQlJ
TUFHRVMgOj0gZmFjdG9yeS5iaW4KKwlJTUFHRVMgOj0gZmFjdG9yeS5iaW4gc3lzdXBncmFkZS5i
aW4KIAkjIFBhZCB0byAxMjhrIGVyYXNlIGJsb2NrcyB3aXRoIDE2MCBieXRlcyBXUkdHIGhlYWRl
cgogCUlNQUdFL2ZhY3RvcnkuYmluIDo9IGFwcGVuZC1rZXJuZWwgfCBwYWQtb2Zmc2V0IDEyOGsg
MTYwIHwgYXBwZW5kLXJvb3RmcyB8IGRpcjY4NS1wYWQtcm9vdGZzIHwgZGlyNjg1LWltYWdlCisJ
SU1BR0Uvc3lzdXBncmFkZS5iaW4gOj0gYXBwZW5kLWtlcm5lbCB8IHBhZC1vZmZzZXQgMTI4ayAx
NjAgfCBkaXI2ODUtaW1hZ2UgfCBhcHBlbmQtcm9vdGZzIHwgZGlyNjg1LXBhZC1yb290ZnMgfCBh
cHBlbmQtbWV0YWRhdGEKKwlTVVBQT1JURURfREVWSUNFUyArPSBkbGluayxkaXItNjg1CiBlbmRl
ZgogVEFSR0VUX0RFVklDRVMgKz0gZGxpbmtfZGlyLTY4NQogCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
