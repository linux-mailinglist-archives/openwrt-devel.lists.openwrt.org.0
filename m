Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A681DB351
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 14:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xR0Qo2hEZZO3Je//BRLGlKGt+a2WqqoYaUIT5VB0ftw=; b=lcwMrIhknzTm9N
	CfPudbSEi4i7+V44RU1c6eFfFAOpJ2Y5VuBUcj6Q3MNcIvVJHbqpy5DRZ+jl7UxZlp5LGOapjnRWI
	fKrL/rQPMYoz/aZis+13zKpXax64XhwHacq0hDq7+1eY8GynXIrEVm55Z+WNhWbQhku35wYSG8bkH
	+BkYKOS6/WjxcZPwzAdA//ZcwO8PnuTmwmks4ItuJk0LRuxMBPaFLuHctEtt//2UI6T8/oTRaYqhM
	+SsDa7JB261+QWNGt2gk/0ndi5lN/2bLiCOm5hDFp9x+LQ3o+hL734i2i3U3PZk96WXooANneN8r1
	H1dx/9DG/xLfcd2drOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNu3-0007L5-Qt; Wed, 20 May 2020 12:32:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNtx-0007KU-Ek
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 12:32:50 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE22520756
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 12:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589977968;
 bh=E5KJwAmdBgVsDkliTX3GBUWeIeJZU3/Jhd+MpmzrS6s=;
 h=From:To:Subject:Date:From;
 b=vOBDs4mGP71K4zFAY8C4PXomUQo3xrjMwLWJ4hcj3vN4oAUk8KW63b3JX2Isko60d
 p5RC/T5HoiKp3KWdx5YJB/h9M80EY5C+svVhJFikUR2lR5bqDB6IKJRktrqEnLzxr0
 Z84aLpEuMLuQhbErZD4MkcTC96RL4uBAhIhX/B14=
Received: by pali.im (Postfix)
 id 8D07F65A; Wed, 20 May 2020 14:32:46 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 May 2020 14:31:46 +0200
Message-Id: <20200520123146.30867-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053249_519089_70FE1AD3 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: [OpenWrt-Devel] [PATCH iwinfo] iwinfo: add device id for Atheros
 AR9287 PCIe wifi card
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

VGhpcyBjYXJkIGlzIGlkZW50aWZpZWQgYnkgbHNwY2kgYXM6CgogIDAxOjAwLjAgTmV0d29yayBj
b250cm9sbGVyIFswMjgwXTogUXVhbGNvbW0gQXRoZXJvcyBBUjkyODcgV2lyZWxlc3MgTmV0d29y
ayBBZGFwdGVyIChQQ0ktRXhwcmVzcykgWzE2OGM6MDAyZV0gKHJldiAwMSkKICAgICAgICAgIFN1
YnN5c3RlbTogUXVhbGNvbW0gQXRoZXJvcyBEZXZpY2UgWzE2OGM6MzBhNF0KClNpZ25lZC1vZmYt
Ynk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogaGFyZHdhcmUudHh0IHwgMSAr
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9oYXJkd2FyZS50
eHQgYi9oYXJkd2FyZS50eHQKaW5kZXggNjRhYjcwOC4uMjYyYzY5ZSAxMDA2NDQKLS0tIGEvaGFy
ZHdhcmUudHh0CisrKyBiL2hhcmR3YXJlLnR4dApAQCAtMTQ4LDYgKzE0OCw3IEBACiAweDE2OGMg
MHgwMDJkIDB4MTY4YyAweDIwOWEgICAgMCAgICAgIDAgICJBdGhlcm9zIiAgIkFSOTI4NyIKIDB4
MTY4YyAweDAwMmUgMHgxYTNiIDB4MTEyMSAgICAwICAgICAgMCAgIkF0aGVyb3MiICAiQVI5Mjg3
IgogMHgxNjhjIDB4MDAyZSAweDA3NzcgMHhlMGEyICAgIDggICAgICAwICAiVWJpcXVpdGkiICJO
YW5vU3RhdGlvbiBMb2NvIE0yIChYTSkiIC8qIHdyb25nIG9mZnNldCEgKi8KKzB4MTY4YyAweDAw
MmUgMHgxNjhjIDB4MzBhNCAgICAwICAgICAgMCAgIkF0aGVyb3MiICAiQVI5Mjg3IgogMHgxNjhj
IDB4MDAzMCAweDE2OGMgMHgzMTE0ICAgIDAgICAgICAwICAiQXRoZXJvcyIgICJBUjkzOTAiCiAw
eDE2OGMgMHgwMDMzIDB4MTY4YyAweGExMjAgICAgMCAgICAgIDAgICJBdGhlcm9zIiAgIkFSOTU4
MCIKIDB4MTY4YyAweDAwMzMgMHgxNjhjIDB4YTEzNiAgICAwICAgICAgMCAgIkF0aGVyb3MiICAi
QVI5NTgwIgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
