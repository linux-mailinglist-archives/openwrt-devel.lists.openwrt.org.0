Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E8823CF7
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 18:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPbqQuHetiYir/uFF59YHS5yLyIdhkjlA+7dNf/2NuM=; b=L8ebjZ2LzhVkAv
	Tq2aWXuhn998TSS+92WR2tqHpEo1WhDaPxOdsBw3eK+3klW4AvMxCH5cO92jVr9/LGtoc0gMfWyBt
	Jh6sQ91x/ePTg/Zjho72Peo97tUdJwBBg84x3UYf/JUEmXsxV0qaxSnDHupVI5akXOMjPI0WkJCjD
	pc0lvOoK1Y/c9wscmsdmz1QVLyzBNgq8dmyxxYw/3T1rWLnhYixbP/TpcrSjpNGSouNvKBpBiwgsG
	t3yysqy1MLxpNh+tYlsc/QzIkPHAEQdJ3G07x/xgIIlbMAFXRKxPmzjV56hHk3kDjfEStIVmmzRL+
	hqtsDD24e87/vbgFSl9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkvZ-0004Xj-CR; Mon, 20 May 2019 16:14:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkv8-00048t-QN
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 16:13:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 853CC4B31;
 Mon, 20 May 2019 18:13:47 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1f0b1b3c;
 Mon, 20 May 2019 18:13:46 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 18:13:22 +0200
Message-Id: <1558368805-19484-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558368805-19484-1-git-send-email-ynezz@true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_091351_028007_BBAF3CCE 
X-CRM114-Status: UNSURE (   7.69  )
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
Subject: [OpenWrt-Devel] [PATCH RFC 2/5] ubox: move getrandom into separate
 getrandom package
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U28gaXQncyBwb3NzaWJsZSB0byBpbnN0YWxsIG9yIHJlbW92ZSBpdCBhcyBuZWVkZWQuCgpTaWdu
ZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHBhY2thZ2Uvc3lz
dGVtL3Vib3gvTWFrZWZpbGUgfCAxNyArKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9z
eXN0ZW0vdWJveC9NYWtlZmlsZSBiL3BhY2thZ2Uvc3lzdGVtL3Vib3gvTWFrZWZpbGUKaW5kZXgg
MjY4ZmFiOWQ3NGJiLi5hYjc5NzMxYTU2MWEgMTAwNjQ0Ci0tLSBhL3BhY2thZ2Uvc3lzdGVtL3Vi
b3gvTWFrZWZpbGUKKysrIGIvcGFja2FnZS9zeXN0ZW0vdWJveC9NYWtlZmlsZQpAQCAtMSw3ICsx
LDcgQEAKIGluY2x1ZGUgJChUT1BESVIpL3J1bGVzLm1rCiAKIFBLR19OQU1FOj11Ym94Ci1QS0df
UkVMRUFTRTo9MQorUEtHX1JFTEVBU0U6PTIKIAogUEtHX1NPVVJDRV9QUk9UTzo9Z2l0CiBQS0df
U09VUkNFX1VSTD0kKFBST0pFQ1RfR0lUKS9wcm9qZWN0L3Vib3guZ2l0CkBAIC0yNywxOCArMjcs
MjggQEAgZGVmaW5lIFBhY2thZ2UvdWJveAogICBUSVRMRTo9T3BlbldydCBzeXN0ZW0gaGVscGVy
IHRvb2xib3gKIGVuZGVmCiAKK2RlZmluZSBQYWNrYWdlL2dldHJhbmRvbQorICBTRUNUSU9OOj1i
YXNlCisgIENBVEVHT1JZOj1CYXNlIHN5c3RlbQorICBUSVRMRTo9T3BlbldydCBnZXRyYW5kb20g
c3lzdGVtIGhlbHBlcgorZW5kZWYKKwogZGVmaW5lIFBhY2thZ2UvbG9nZAotU0VDVElPTjo9YmFz
ZQorICBTRUNUSU9OOj1iYXNlCiAgIENBVEVHT1JZOj1CYXNlIHN5c3RlbQogICBERVBFTkRTOj0r
bGlidWJveCArbGlidWJ1cyArbGliYmxvYm1zZy1qc29uICtVU0VfR0xJQkM6bGlicnQKICAgVElU
TEU6PU9wZW5XcnQgc3lzdGVtIGxvZyBpbXBsZW1lbnRhdGlvbgogZW5kZWYKIAorZGVmaW5lIFBh
Y2thZ2UvZ2V0cmFuZG9tL2luc3RhbGwKKwkkKElOU1RBTExfRElSKSAkKDEpL3Vzci9iaW4KKwkk
KElOU1RBTExfQklOKSAkKFBLR19JTlNUQUxMX0RJUikvdXNyL2Jpbi9nZXRyYW5kb20gJCgxKS91
c3IvYmluLworZW5kZWYKKwogZGVmaW5lIFBhY2thZ2UvdWJveC9pbnN0YWxsCiAJJChJTlNUQUxM
X0RJUikgJCgxKS9zYmluICQoMSkvdXNyL3NiaW4gJCgxKS9saWIgJCgxKS91c3IvYmluCiAKIAkk
KElOU1RBTExfQklOKSAkKFBLR19JTlNUQUxMX0RJUikvdXNyL3NiaW4ve2ttb2Rsb2FkZXIsdmFs
aWRhdGVfZGF0YX0gJCgxKS9zYmluLwotCSQoSU5TVEFMTF9CSU4pICQoUEtHX0lOU1RBTExfRElS
KS91c3IvYmluL2dldHJhbmRvbSAkKDEpL3Vzci9iaW4vCiAJJChJTlNUQUxMX0RBVEEpICQoUEtH
X0lOU1RBTExfRElSKS91c3IvbGliL2xpYnZhbGlkYXRlLnNvICQoMSkvbGliCiAKIAkkKExOKSBr
bW9kbG9hZGVyICQoMSkvc2Jpbi9ybW1vZApAQCAtNTYsNCArNjYsNSBAQCBkZWZpbmUgUGFja2Fn
ZS9sb2dkL2luc3RhbGwKIGVuZGVmCiAKICQoZXZhbCAkKGNhbGwgQnVpbGRQYWNrYWdlLHVib3gp
KQorJChldmFsICQoY2FsbCBCdWlsZFBhY2thZ2UsZ2V0cmFuZG9tKSkKICQoZXZhbCAkKGNhbGwg
QnVpbGRQYWNrYWdlLGxvZ2QpKQotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
