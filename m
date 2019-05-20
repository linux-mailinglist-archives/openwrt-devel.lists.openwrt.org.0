Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFB224217
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 22:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wPq8h3vXsb6hGYXyNkjUlzwjq2kf9mUhqD7pX+w0rdo=; b=Yn5kaIIj/NkWSz
	LlPMGMEF1PT2YsEXcVt08NfAAoIoJK/O9LDBl8PONMxEOylFIx1D/BPnDcQ8njvuNE7Q0p0psL/pJ
	eczz7NXOb+sUijiaAC8ItVCQSWfGFmgfuOUp3HXmcaoYzf1vMfIYwSVP/JYQP0cx1qO9feFsLtNaH
	YmLG17eODS5JNk4BefymbRQEEp5Z87Mg0uzKn5AKB47TiUhxV9NV5JX9klB1u3WUONIy8hMRRkrtT
	OEDoTjTP15NOpMFVkRtIKd8/4eWSY4ykffCMzfvyd+HEdVkhIP20KqOIVwzZ7Iq7GG+7eIYqKaAff
	S8z+288QpaBA7es3209Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoqn-0003Oj-GY; Mon, 20 May 2019 20:25:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoqh-0003OE-7W
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 20:25:32 +0000
Received: by mail-lj1-x242.google.com with SMTP id m15so4419069ljg.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 May 2019 13:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qssejfdDyZhEjulLVo9Vr1y4KvrdSwZnNkvBUEq9JqM=;
 b=hwYkc1gQte5i2RMuMdelh55codDFvasfIXthEyo05YcxmL2BSyL5hbzzC3C7xuGl/U
 QjBEB2zjo9Rek0K73vC6+ltL4opqNYeXmRrFuuBG0T4bB3mOuiSm/K+VqTTXLx9bNAC5
 WcBRcuoSwymHpKdx5TFYdJVMRW6pk50rcb/h0Tn3ZsPPVAin/RtdQ6WPGr42oYR5qma1
 nJ0gG07H3QyStxY7T3cxzXOeFDNcv9LwrXNBazYL1rv4c84sd1tF1fDHqG0/ECU6ZdP0
 /ZlvMaGF2/1OwdCloC41Erc6lsZeP/HtLFBnPJIkE09EOTNu4FJVTriEvhC/hS39N5Wg
 fI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qssejfdDyZhEjulLVo9Vr1y4KvrdSwZnNkvBUEq9JqM=;
 b=LLDtG/E+wrXTX0vaiGPAG4O7kiQQ/VAvupChpthvzpwsUqne92Ym5RprpbrndvedBT
 Lq5Bzfd63AXuEqjyD69co81efuigrN5c0hnUs9/jJE4K/9usxmejjqvPdxrjvBlz28zk
 fr568O4Sihy4I9DaLkFqGe2TEEB3ZJ0roZPyo5VvQAIo0MdbQWqw7eLGz7k9E586OeO3
 l1uyfrytm1gDAIxUVm+jKbfKIuOb8vkX2J2VryvPEuaGnsamPL63iqiKUG5rA5BKWO9p
 U2pG+8xHahom9AzNf4622jR3ORIXAk/W1x5WNmFks8YRctCUXeXjZuBLRB6GchJwUgQO
 F0uQ==
X-Gm-Message-State: APjAAAUtzjOa9yz+CRdLDrhBGVHd/KzMO7jAzZ2qBJMuyQaAOMSQXKrB
 vaO/IsVK7h8ZdMQOnyw9Pnza/g==
X-Google-Smtp-Source: APXvYqyA9eJUVB7f2ygtNFzrJts+/jJ/jWTPdiuNvw7yQLU5vMbmlk9Ao8SCkBPatYX+z3I/QeSkhQ==
X-Received: by 2002:a2e:597:: with SMTP id 145mr11105542ljf.127.1558383925402; 
 Mon, 20 May 2019 13:25:25 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z6sm4044960ljh.61.2019.05.20.13.25.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 13:25:24 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 20 May 2019 22:25:21 +0200
Message-Id: <20190520202521.8587-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_132531_333967_3B6210BD 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3] gemini: Support sysupgrade on DIR-685
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
CkNoYW5nZUxvZyB2Mi0+djM6Ci0gRHJvcCB0aGUgV1JHRyBtYWdpYyBjaGVjazogYWZ0ZXIgdGhp
bmtpbmcgYWJvdXQgaXQgdGhpcwogIGNoZWNrIG9ubHkgTUQ1LXN1bXMgdGhlIGtlcm5lbCBvbiB0
aGUgc3lzdXBncmFkZSBpbWFnZXMKICBzbyBpdCBpcyBub3QgaGVscGZ1bCBmb3IgY2hlY2tpbmcg
dGhlIHN0dWZmIHdlIGFjdHVhbGx5CiAgd3JpdGUgdG8gZmxhc2gsIGluY2x1ZGluZyB0aGUgcm9v
dGZzLiBTbyBza2lwIGl0IG9uCiAgc3lzdXBncmFkZS4KQ2hhbmdlTG9nIHYxLT52MjoKLSBBcHBl
bmQgbWV0YWRhdGEgdG8gc3lzdXBncmFkZSBpbWFnZQotIFJlcXVpcmUgbWV0YWRhdGEgaW4gcGxh
dGZvcm0uc2gKLSBTdHJpcCBjb21tZW50cwotLS0KIC4uLi9nZW1pbmkvYmFzZS1maWxlcy9saWIv
dXBncmFkZS9wbGF0Zm9ybS5zaCB8IDQwICsrKysrKysrKysrKysrKysrKysKIHRhcmdldC9saW51
eC9nZW1pbmkvaW1hZ2UvTWFrZWZpbGUgICAgICAgICAgICB8ICA1ICsrLQogMiBmaWxlcyBjaGFu
Z2VkLCA0NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
dGFyZ2V0L2xpbnV4L2dlbWluaS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCgpk
aWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbWluaS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3Bs
YXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L2dlbWluaS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3Bs
YXRmb3JtLnNoCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZWFhZjlk
NzM0ZTEzCi0tLSAvZGV2L251bGwKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbWluaS9iYXNlLWZpbGVz
L2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCkBAIC0wLDAgKzEsNDAgQEAKK1JFUVVJUkVfSU1BR0Vf
TUVUQURBVEE9MQorCitwbGF0Zm9ybV9maW5kX3BhcnRfc2l6ZSgpIHsKKwlsb2NhbCBmaXJzdCBk
ZXYgc2l6ZSBlcmFzZXNpemUgbmFtZQorCXdoaWxlIHJlYWQgZGV2IHNpemUgZXJhc2VzaXplIG5h
bWU7IGRvCisJCW5hbWU9JHtuYW1lIyciJ307IG5hbWU9JHtuYW1lJSciJ30KKwkJWyAiJG5hbWUi
ID0gIiQxIiBdICYmIHsKKwkJCWVjaG8gIiRzaXplIgorCQkJYnJlYWsKKwkJfQorCWRvbmUgPCAv
cHJvYy9tdGQKK30KKworcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSB7CisJbG9jYWwgYm9hcmQ9JChi
b2FyZF9uYW1lKQorCisJY2FzZSAiJGJvYXJkIiBpbgorCWRsaW5rLGRpci02ODUgKQorCQlyZXR1
cm4gMAorCQk7OworCWVzYWMKKworCWVjaG8gIlN5c3VwZ3JhZGUgaXMgbm90IHlldCBzdXBwb3J0
ZWQgb24gJGJvYXJkLiIKKwlyZXR1cm4gMQorfQorCitwbGF0Zm9ybV9kb191cGdyYWRlKCkgewor
CWxvY2FsIGJvYXJkPSQoYm9hcmRfbmFtZSkKKworCXYgImJvYXJkPSRib2FyZCIKKwljYXNlICIk
Ym9hcmQiIGluCisJZGxpbmssZGlyLTY4NSApCisJCVBBUlRfTkFNRT1maXJtd2FyZQorCQlkZWZh
dWx0X2RvX3VwZ3JhZGUgIiRBUkdWIgorCQk7OworCSopCisKKwkJOzsKKwllc2FjCit9CmRpZmYg
LS1naXQgYS90YXJnZXQvbGludXgvZ2VtaW5pL2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4
L2dlbWluaS9pbWFnZS9NYWtlZmlsZQppbmRleCA4ZmVjMjUwZjE4NmEuLjMzMzljZDI0NjdhOSAx
MDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2dlbWluaS9pbWFnZS9NYWtlZmlsZQorKysgYi90YXJn
ZXQvbGludXgvZ2VtaW5pL2ltYWdlL01ha2VmaWxlCkBAIC0xMTUsNiArMTE1LDcgQEAgZGVmaW5l
IERldmljZS9EZWZhdWx0CiAJS0VSTkVMX05BTUUgOj0gekltYWdlCiAJS0VSTkVMIDo9IGtlcm5l
bC1iaW4gfCBhcHBlbmQtZHRiCiAJQkxPQ0tTSVpFIDo9IDEyOGsKKwlTVVBQT1JURURfREVWSUNF
UyA6PSAkKHN1YnN0IF8sJChjb21tYSksJCgxKSkKIGVuZGVmCiAKICMgQSByZWFzb25hYmxlIHNl
dCBvZiBkZWZhdWx0IHBhY2thZ2VzIGhhbmRsaW5nIHRoZSBOQVMgdHlwZQpAQCAtMTQzLDkgKzE0
NCwxMSBAQCBkZWZpbmUgRGV2aWNlL2RsaW5rX2Rpci02ODUKIAlERVZJQ0VfUEFDS0FHRVMgOj0g
JChHRU1JTklfTkFTX1BBQ0tBR0VTKSBcCiAJCQlrbW9kLXN3aXRjaC1ydGw4MzY2cmIgc3djb25m
aWcgXAogCQkJa21vZC1ydDI4MDAtcGNpCi0JSU1BR0VTIDo9IGZhY3RvcnkuYmluCisJSU1BR0VT
IDo9IGZhY3RvcnkuYmluIHN5c3VwZ3JhZGUuYmluCiAJIyBQYWQgdG8gMTI4ayBlcmFzZSBibG9j
a3Mgd2l0aCAxNjAgYnl0ZXMgV1JHRyBoZWFkZXIKIAlJTUFHRS9mYWN0b3J5LmJpbiA6PSBhcHBl
bmQta2VybmVsIHwgcGFkLW9mZnNldCAxMjhrIDE2MCB8IGFwcGVuZC1yb290ZnMgfCBkaXI2ODUt
cGFkLXJvb3RmcyB8IGRpcjY4NS1pbWFnZQorCUlNQUdFL3N5c3VwZ3JhZGUuYmluIDo9IGFwcGVu
ZC1rZXJuZWwgfCBwYWQtb2Zmc2V0IDEyOGsgMTYwIHwgZGlyNjg1LWltYWdlIHwgYXBwZW5kLXJv
b3RmcyB8IGRpcjY4NS1wYWQtcm9vdGZzIHwgYXBwZW5kLW1ldGFkYXRhCisJU1VQUE9SVEVEX0RF
VklDRVMgKz0gZGxpbmssZGlyLTY4NQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IGRsaW5rX2Rp
ci02ODUKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
