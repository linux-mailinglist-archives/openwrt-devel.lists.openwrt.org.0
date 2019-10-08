Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880DACF028
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bz+UlFsdg1CMAi8vVe373XNNMnelNlIWl7T2nZXYsds=; b=LNIf6q0kFnyo8PiuCeye1Bg1CU
	a2CW2t4lThpP7O5MoMHsjevwzCgzhpE4gh/9iePpCgHTTklmQPTtxCjCtxmu2Ql0PsAfX3v5Iwh7H
	Jeyc+RbrvXSjTpK1VnXPkSGvdvwHFwCePnwBMtfyLRoT2QbQFN4XCz8EG06Cueey4vk0tRhRkBl1G
	X2SiDkbljsQEeFm96uyA3F6szeztSUFW53HmsvVH3DHCxD4MVFDExoMlEmJ+oHqxUJ61MQLa3RZop
	L+RO7lJrqpyirJdO7MGMcnZnQjeywRmu+u7N6j/FEDc32v0i5kFrJ/RQNBkHgRVBX28NebZyvTDnp
	up2PrnAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHdvC-0007U7-UL; Tue, 08 Oct 2019 01:04:14 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtW-0005lb-S3
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:36 +0000
Received: by mail-pg1-x534.google.com with SMTP id z12so9249585pgp.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=HjkYFuVMlxwLNI93iVzAAFFPIxqf2OgmC0MUG7PXYrE=;
 b=LxxN131/HUwAiM868sZXvFfsWRYh8iuOrmEUQ3OjkFXkZKD4lIWesBFSv2eBhNmV6o
 SHOjsSd22PqrLeycGSoSx0/71X+R1dh03vpck1L0a6nc3zqQLV+6KUhF5PCfDR4t22tc
 dld8eIi0KZcreXNxfmB6GAiymDena16k3ycRHwMEKmif2j9bGs76Gic4lIKJ9zbKSMiW
 f+916SGHHMKNH69aTBj2hG5qxnCcr99/se0Pq0M/58P/8LR5v/AqCzv3eFI1YcrPBZWI
 C0Zvv6/oLvdMAWIJDf4TsxUJrLq5FAFtXwYsWRJLj5+/5JumcH7QJHmbm8ETW4zEEX1X
 wg8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HjkYFuVMlxwLNI93iVzAAFFPIxqf2OgmC0MUG7PXYrE=;
 b=jTPMpvbTvnUE49U7aMhLxzebTwEgP94nlnPTt7EEL0ESGKIEkJgX6h6qtVsNBtmDy3
 DgYBlkfIYqdVOO95HHgxelBKMw0O61b5rSGgre+acLgmND8oIh64yG31TOEBRrykp6Eo
 /9h2DS3umH9XSweIasebT6imlCQIaAezK/fTOGiYpFrP+yS46KNYVr1k7Lu82AxwbEur
 KbvH63wz4aBYVO8TQRqmH2tpZTJwR4cNegODcvVw2GFS+e+Dce9R+v17tXQ68Y+xHebQ
 Q6WSiGsPbuGMHPnZI16n8GDORvvKW15d2Akw8dpgDQEoVt0+0TJ8mWiDe0XhrKSDhLVH
 9YVQ==
X-Gm-Message-State: APjAAAVAGqBm+Rbuvrq5exits7YkwH8wpeHOsnn20yJsr6CyIni4P79a
 mPqb1NyKHPeYT7WUxpPrcMDA2PYh
X-Google-Smtp-Source: APXvYqyzsP9+VizaOsNglx96nb0qUMoxuEoHm9nIpXBqrgjWDd5rIq8wvYe+mCJEA7r2HiIcSSBLHQ==
X-Received: by 2002:a17:90a:17c5:: with SMTP id
 q63mr2463711pja.106.1570496549628; 
 Mon, 07 Oct 2019 18:02:29 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:29 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:20 -0700
Message-Id: <20191008010225.8822-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
References: <20191008010225.8822-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180230_904910_2708BE37 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/8] tools/dosfstools: Replace iconv patch
 with upstream submission
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

SXQgYWxsb3dzIG1vcmUgcGxhdGZvcm1zIHRvIGJlIGFibGUgdG8gYnVpbGQgaXQgc3VjaCBhcyBD
eWd3aW4uCgpUaGlzIGlzIHRoZSBzYW1lIHBhdGNoIGN1cnJlbnRseSBpbiB0aGUgcGFja2FnZXMg
cmVwby4KClNpZ25lZC1vZmYtYnk6IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPgotLS0K
IC4uLl9DSEVDS19MSUItZm9yLWljb252LWxpYnJhcnktbGlua2luZy5wYXRjaCB8IDI3IC0tLS0t
LS0tLS0tLS0tLS0tLS0KIHRvb2xzL2Rvc2ZzdG9vbHMvcGF0Y2hlcy8wMTAtaWNvbnYucGF0Y2gg
ICAgICB8IDI2ICsrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRp
b25zKCspLCAyNyBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCB0b29scy9kb3Nmc3Rv
b2xzL3BhdGNoZXMvMDAwMi1Td2l0Y2gtdG8tQUNfQ0hFQ0tfTElCLWZvci1pY29udi1saWJyYXJ5
LWxpbmtpbmcucGF0Y2gKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy9kb3Nmc3Rvb2xzL3BhdGNo
ZXMvMDEwLWljb252LnBhdGNoCgpkaWZmIC0tZ2l0IGEvdG9vbHMvZG9zZnN0b29scy9wYXRjaGVz
LzAwMDItU3dpdGNoLXRvLUFDX0NIRUNLX0xJQi1mb3ItaWNvbnYtbGlicmFyeS1saW5raW5nLnBh
dGNoIGIvdG9vbHMvZG9zZnN0b29scy9wYXRjaGVzLzAwMDItU3dpdGNoLXRvLUFDX0NIRUNLX0xJ
Qi1mb3ItaWNvbnYtbGlicmFyeS1saW5raW5nLnBhdGNoCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCBlYTkzMzIwODIxLi4wMDAwMDAwMDAwCi0tLSBhL3Rvb2xzL2Rvc2ZzdG9vbHMvcGF0
Y2hlcy8wMDAyLVN3aXRjaC10by1BQ19DSEVDS19MSUItZm9yLWljb252LWxpYnJhcnktbGlua2lu
Zy5wYXRjaAorKysgL2Rldi9udWxsCkBAIC0xLDI3ICswLDAgQEAKLUZyb20gMWM2YzEzNWVlMTVl
NDQ5YzFiZjJlNzZkNTMwN2Y4M2EzYTFkNzQyNSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKLUZy
b206ID0/VVRGLTg/cT89QzM9ODFsdmFybz0yMEZlcm49QzM9QTFuZGV6PTIwUm9qYXM/PSA8bm9s
dGFyaUBnbWFpbC5jb20+Ci1EYXRlOiBUdWUsIDExIE9jdCAyMDE2IDEyOjA3OjQ4ICswMjAwCi1T
dWJqZWN0OiBbUEFUQ0hdIFN3aXRjaCB0byBBQ19DSEVDS19MSUIgZm9yIGljb252IGxpYnJhcnkg
bGlua2luZy4KLU1JTUUtVmVyc2lvbjogMS4wCi1Db250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNo
YXJzZXQ9VVRGLTgKLUNvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQKLQotQUNfU0VBUkNI
X0xJQiBkb2Vzbid0IHdvcmsgcHJvcGVybHkgZm9yIG9wZW53cnQvbGVkZSB3aGVuIGJ1aWxkaW5n
IGRvc2ZzdG9vbHMKLWFzIGEgcGFja2FnZS4KLQotU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJu
w6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KLS0tLQotIGNvbmZpZ3VyZS5hYyB8IDIg
Ky0KLSAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKLQotLS0t
IGEvY29uZmlndXJlLmFjCi0rKysgYi9jb25maWd1cmUuYWMKLUBAIC01OSw3ICs1OSw3IEBAIGlm
IHRlc3QgIngkd2l0aF91ZGV2IiAhPSAieG5vIjsgdGhlbgotIAkJICBbdHJ1ZV0pCi0gZmkKLSAK
LS1BQ19TRUFSQ0hfTElCUyhpY29udl9vcGVuLCBpY29udikKLStBQ19DSEVDS19MSUIoaWNvbnYs
IGljb252X29wZW4pCi0gCi0gIyB4eGQgKGRpc3RyaWJ1dGVkIHdpdGggdmltKSBpcyB1c2VkIGlu
IHRoZSB0ZXN0c3VpdGUKLSBBQ19DSEVDS19QUk9HKFtYWERfRk9VTkRdLCBbeHhkXSwgW3llc10p
CmRpZmYgLS1naXQgYS90b29scy9kb3Nmc3Rvb2xzL3BhdGNoZXMvMDEwLWljb252LnBhdGNoIGIv
dG9vbHMvZG9zZnN0b29scy9wYXRjaGVzLzAxMC1pY29udi5wYXRjaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwLi4wNGQ0MDJiZjNiCi0tLSAvZGV2L251bGwKKysrIGIvdG9v
bHMvZG9zZnN0b29scy9wYXRjaGVzLzAxMC1pY29udi5wYXRjaApAQCAtMCwwICsxLDI2IEBACitG
cm9tIGUxOGJjYzY1ZDU3NzJlNTE4YzY0OTZiNDM5YmFkOGE5ODZmN2U0MzQgTW9uIFNlcCAxNyAw
MDowMDowMCAyMDAxCitGcm9tOiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KK0RhdGU6
IFRodSwgMjAgSnVuIDIwMTkgMTU6MTg6MTkgLTA3MDAKK1N1YmplY3Q6IFtQQVRDSF0gY29uZmln
dXJlOiBGaXggaWNvbnYgY2hlY2sgZm9yIGNyb3NzIGNvbXBpbGF0aW9uCisKK0FDX0NIRUNLX0xJ
QiBpcyBtb3JlIGZyaWVuZGx5IHRvd2FyZHMgY3Jvc3MtY29tcGlsYXRpb24uCisKK0FkZGVkIGNo
ZWNrIGZvciBsaWJpY29udl9vcGVuIGFzIHRoYXQgY2FuIGJlIHVzZWQgd2hlbiB0aGUgbGliYyBs
YWNrcyBpY29udi4KKy0tLQorIGNvbmZpZ3VyZS5hYyB8IDMgKystCisgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQorCitkaWZmIC0tZ2l0IGEvY29uZmlndXJl
LmFjIGIvY29uZmlndXJlLmFjCitpbmRleCAwN2U4NzAzLi4xYjA5OTY0IDEwMDY0NAorLS0tIGEv
Y29uZmlndXJlLmFjCisrKysgYi9jb25maWd1cmUuYWMKK0BAIC03NSw3ICs3NSw4IEBAIGlmIHRl
c3QgIngkd2l0aF91ZGV2IiAhPSAieG5vIjsgdGhlbgorIAkJICBbdHJ1ZV0pCisgZmkKKyAKKy1B
Q19TRUFSQ0hfTElCUyhpY29udl9vcGVuLCBpY29udikKKytBQ19DSEVDS19MSUIoaWNvbnYsIGlj
b252X29wZW4pCisrQUNfQ0hFQ0tfTElCKGljb252LCBsaWJpY29udl9vcGVuKQorIAorICMgeHhk
IChkaXN0cmlidXRlZCB3aXRoIHZpbSkgaXMgdXNlZCBpbiB0aGUgdGVzdHN1aXRlCisgQUNfQ0hF
Q0tfUFJPRyhbWFhEX0ZPVU5EXSwgW3h4ZF0sIFt5ZXNdKQotLSAKMi4xNy4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
