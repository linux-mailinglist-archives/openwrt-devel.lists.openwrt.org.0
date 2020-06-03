Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A9B1ED8C4
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 00:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UhYT5iJzh73Sqj6/IDTp64iRzFP+Qrps8zUMiaiaqJU=; b=s8e1pDO5seyRQz
	pQ5rm1ktVOB+fGG/6nj1oGwAlK/mKjpYOkAqoMDh2gKkJrQ3rymx+yncAUy2vYcZB/D3FN3jqTd0k
	6wQDKfPzKvwBqTjyLYM2t4ebVDts8UKfH0SRTVmUoXQj85zFfB0wPfeTz8Oc6MaW+ZsqhNTW2NvRb
	oLj39AMst84msh3XL8U9p/TrnYIfjwJ+5stu9JZpqyhOvbODS4cYnXX64VB4ojVJZTZKMwP490Cps
	nk5piZgK6fNPoWSAfweBTyVe6RqHSSjc0V62DdyspaHK9NRKdGqAZg/gRsL0dA/BxESS1Ih6IIVjT
	17oIQaun1/NTq+MZesoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgcCB-0003c7-Pl; Wed, 03 Jun 2020 22:49:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcC3-0003b1-Lz
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 22:49:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id k26so3713275wmi.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 15:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F0Rhqruq6LhW2nXCLrnKDav8NP3MgMrGNIzqblTljdw=;
 b=tkPHRdbZBwcJMSYUVrM/7uPE+V4SvJsABf0ykTMwoGGbA5d4ieBdjRTyJy9+6r7RPo
 z25NWADP7zbu2R9QK4sdNltXywOYiMfqrVOVObJahOCmi6lr6T8HzuzK1KCQR59g+Mlw
 dJb0wEUoyyF4x+ClcHgMBSgVZzvzI1CT+OCh0OljPfzfYsYvpeBCSJ9iw9EyT2PWuGSw
 KR3WGqTmYXz9F9rHDZ0hRRdvnMuOW9gbRaX0nFLq1gZMVUAp6dZ6SvDce2WiS1QPsMtf
 XiyIaF9C+4dXZi6QXijllqk0BCL+AKHTfrcBGpunOUPyzzFTYjLXh948/scGtgCavAFn
 77BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F0Rhqruq6LhW2nXCLrnKDav8NP3MgMrGNIzqblTljdw=;
 b=EWq5lY1vSIB43vFSKJlzcdnFDFWc27oPMzHfRNrLNCzBOU9xFtAkHNeT/850OIKlkj
 1VTidN2qBWcpr2KwR7eHag96CFW6xMUucqkhCYMggmhDnoBVcVJ7Qp5uTKh1OSu31JQt
 wJ+JL68J8cki3rDlZbdu+hKW9eC6VbLHOcz0a0i2rO/A6rLPiLznBxU++jQ4r0xP6bqJ
 4pGvjtL6I0aDCTNfOjT9V+VyXD031mr3u8W7VA6vuHu+eMMPAQ2W4jDWsX5pRZBqbICS
 bO7+GMeO29+hWt/0SZLyqqzB+hZLkgns0cCEBj2wx5IoXqtA7L4fe1qZ7rfnWoLsjGnr
 0IvQ==
X-Gm-Message-State: AOAM533Ogh6n5ZR1Sl9O74yUVhMwHqoH1MKXwT2+zmkh+kbCyIgJL8L/
 ZfBaKkraGl/9tF5D9HjCgPKy06pg
X-Google-Smtp-Source: ABdhPJywEDf+8qBSetKn37iXBOLVODnH6eFWZjq20HHGtftK6bxMCWa3TownO4vKA8UHHLXD/y0y9g==
X-Received: by 2002:a1c:230f:: with SMTP id j15mr1257043wmj.100.1591224545913; 
 Wed, 03 Jun 2020 15:49:05 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id d16sm4707477wmd.42.2020.06.03.15.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 15:49:05 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 04 Jun 2020 00:48:18 +0200
Message-ID: <13459882.VCOgWE8nHm@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_154907_717479_3B269775 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/4] bcm63xx: image: allow to pass the addr
 to the NAND kernel header
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
Cc: noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tm90IGFsbCBDRkVzIHdpbGwgbmVlZCB0byByZWxvY2F0ZSB0aGUga2VybmVsIChpLmUgSDUwMC1z
KSwgdGhlcmVyZWZvcmUgd2UnbGwgbmVlZAp0byBwYXNzIGEgZGlmZmVyZW50IGFkZHJlc3MgYW5k
IG5vdCB0aGUgTE9BREVSX0VOVFJZCgpMZXQgdG8gcGFzcyB0aGUgYWRkciB0byB0aGUgaW1hZ2Ug
Y3JlYXRpb24gd2hlbiBuZWNjZXNzYXJ5LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIEdvbnrDoWxl
eiBDYWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwuY29tPgotLS0KIHRhcmdldC9saW51eC9iY202M3h4
L2ltYWdlL01ha2VmaWxlIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdl
L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKaW5kZXggZTU3
Yjk5MzkxZi4uODhkZTcxMzE5YyAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1h
Z2UvTWFrZWZpbGUKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKQEAg
LTE5Niw4ICsxOTYsOCBAQCBkZWZpbmUgQnVpbGQvY2ZlLWpmZnMyLWtlcm5lbAogCSQoVE9QRElS
KS9zY3JpcHRzL2NmZS1iaW4taGVhZGVyLnB5IFwKIAkJLS1pbnB1dC1maWxlICRAIFwKIAkJLS1v
dXRwdXQtZmlsZSAkQC1rZXJuZWwvdm1saW51eC5seiBcCi0JCS0tbG9hZC1hZGRyICQoTE9BREVS
X0VOVFJZKSBcCi0JCS0tZW50cnktYWRkciAkKExPQURFUl9FTlRSWSkKKwkJLS1sb2FkLWFkZHIg
JChpZiAkKDEpLCQoMSksJChMT0FERVJfRU5UUlkpKSBcCisJCS0tZW50cnktYWRkciAkKGlmICQo
MSksJCgxKSwkKExPQURFUl9FTlRSWSkpCiAKIAkjIFRoZSBKRkZTMiBwYXJ0aXRpb24gY3JlYXRp
b24gc2hvdWxkIHJlc3VsdCBpbiB0aGUgZm9sbG93aW5nCiAJIyBsYXlvdXQ6Ci0tIAoyLjI3LjAK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
