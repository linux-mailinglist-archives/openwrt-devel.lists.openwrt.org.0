Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E70E185D
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mW4aT/WIMktSj0oK/jFHdUVeAjOHKcRRLAjpwR6OJvw=; b=j+Xfow7wNht436
	+SmRql0Fl1E/h6aY1SFxMwyRGHiJWdIqX3p/JRVMuhvjxN7eS4Yv/jr6CEeBYkwjw6MXebZzOYwcw
	ZpGhhZfYSCSdk/Pdzr7Pbiij7ZqrokNbqYOl1MNPbsKcfWIQraDG1eGQ94X085TvqVYiaLaPVhxtb
	Dqi5fF0udHGgdQLXNTH7kdGDv8LzAiiqcu5UllJgiXfE2f62QX9w3t7RBiIsdzCIkFIq5FRaTkKsd
	DromKx4LCjt4HdnoY/wbGdTt6f9b/6E/d7xXXLyabUJzD93q0ArZwPNlQyvOmcW2Q6f+6tM4CeI94
	etMkLw5I5S25Ht3w5TQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEIg-0004GQ-TV; Wed, 23 Oct 2019 10:55:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEH5-00010u-Cd
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:53:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B6F905242;
 Wed, 23 Oct 2019 12:53:46 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id babdb3c7;
 Wed, 23 Oct 2019 12:53:37 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:53:38 +0200
Message-Id: <20191023105339.16326-8-ynezz@true.cz>
In-Reply-To: <20191023105339.16326-1-ynezz@true.cz>
References: <20191023105339.16326-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035355_611714_D59D1223 
X-CRM114-Status: UNSURE (   7.48  )
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
Subject: [OpenWrt-Devel] [PATCH fwtool 7/8] fix possible copy of null buffer
 and validation of unitialized header
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBoYXMgcmVwb3J0ZWQgZm9sbG93aW5nIGlz
c3VlczoKCiBmd3Rvb2wuYzoyNTc6Mjogd2FybmluZzogTnVsbCBwb2ludGVyIHBhc3NlZCBhcyBh
biBhcmd1bWVudCB0byBhICdub25udWxsJyBwYXJhbWV0ZXIKICAgICAgICBtZW1jcHkoZGVzdCwg
ZGJ1Zi0+Y3VyICsgZGJ1Zi0+Y3VyX2xlbiAtIGN1cl9sZW4sIGN1cl9sZW4pOwogICAgICAgIF5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4K
CiBmd3Rvb2wuYzoyNzU6MjA6IHdhcm5pbmc6IFRoZSBsZWZ0IG9wZXJhbmQgb2YgJyE9JyBpcyBh
IGdhcmJhZ2UgdmFsdWUKICAgICAgICAgaWYgKGhkci0+dmVyc2lvbiAhPSAwKQogICAgICAgICAg
ICAgfn5+fn5+fn5+fn5+IF4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Ci0tLQogZnd0b29sLmMgfCAxMSArKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9md3Rvb2wuYyBiL2Z3
dG9vbC5jCmluZGV4IGMwNTkzMzFhZDIzMS4uZTkyNWIwYmY1ZTY1IDEwMDY0NAotLS0gYS9md3Rv
b2wuYworKysgYi9md3Rvb2wuYwpAQCAtMjUxLDcgKzI1MSw3IEBAIGV4dHJhY3RfdGFpbChzdHJ1
Y3QgZGF0YV9idWYgKmRidWYsIHZvaWQgKmRlc3QsIGludCBsZW4pCiAJcmVtb3ZlX3RhaWwoZGJ1
ZiwgY3VyX2xlbik7CiAKIAljdXJfbGVuID0gbGVuIC0gY3VyX2xlbjsKLQlpZiAoY3VyX2xlbiAm
JiAhZGJ1Zi0+Y3VyKQorCWlmIChjdXJfbGVuIDwgMCB8fCAhZGJ1Zi0+Y3VyKQogCQlyZXR1cm4g
MTsKIAogCW1lbWNweShkZXN0LCBkYnVmLT5jdXIgKyBkYnVmLT5jdXJfbGVuIC0gY3VyX2xlbiwg
Y3VyX2xlbik7CkBAIC0zMjcsOCArMzI3LDEwIEBAIGV4dHJhY3RfZGF0YShjb25zdCBjaGFyICpu
YW1lKQogCiAJd2hpbGUgKDEpIHsKIAotCQlpZiAoZXh0cmFjdF90YWlsKCZkYnVmLCAmdHIsIHNp
emVvZih0cikpKQorCQlpZiAoZXh0cmFjdF90YWlsKCZkYnVmLCAmdHIsIHNpemVvZih0cikpKSB7
CisJCQltc2coInVuYWJsZSB0byBleHRyYWN0IHRyYWlsZXIgaGVhZGVyXG4iKTsKIAkJCWJyZWFr
OworCQl9CiAKIAkJaWYgKHRyLm1hZ2ljICE9IGNwdV90b19iZTMyKEZXSU1BR0VfTUFHSUMpKSB7
CiAJCQltc2coIkRhdGEgbm90IGZvdW5kXG4iKTsKQEAgLTM0OCw3ICszNTAsMTAgQEAgZXh0cmFj
dF9kYXRhKGNvbnN0IGNoYXIgKm5hbWUpCiAJCQlicmVhazsKIAkJfQogCi0JCWV4dHJhY3RfdGFp
bCgmZGJ1ZiwgYnVmLCBkYXRhX2xlbik7CisJCWlmIChleHRyYWN0X3RhaWwoJmRidWYsIGJ1Ziwg
ZGF0YV9sZW4pKSB7CisJCQltc2coInVuYWJsZSB0byBleHRyYWN0IHRyYWlsZXIgZGF0YVxuIik7
CisJCQlicmVhazsKKwkJfQogCiAJCWlmICh0ci50eXBlID09IEZXSU1BR0VfU0lHTkFUVVJFKSB7
CiAJCQlpZiAoIXNpZ25hdHVyZV9maWxlKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
