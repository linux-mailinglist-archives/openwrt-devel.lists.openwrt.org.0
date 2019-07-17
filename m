Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D236B642
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 08:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ki1Zp5VUYwmpTq2qtCePErDquzfYwlMm+hVzQWXCoJQ=; b=kneOECnInc9Nvv
	5yImUIIjT+U6kYNpX8X6fm7DYnl+0UVdWs22oB5EIcto1nQbj1VXPALTpTeTzfGF/LabelBSp2rZw
	Hl8gz4B6/egYgtich0OvSlEzHaM54LFQ4weqnk+HRhdaUYcrGYIAUeFA8XxSF3FrzskXHSRq0TT8F
	W8sERC8fs4pPjXY0iNaoK6SexmE6Q6yW9F3XXZAFiffJKeOlVNxK4wCAXvi2V5OBzvVy5iI+9Upwq
	r7zaz/gJ/dIOsSTBEkARz4sGxZURZqyVnO1q8A836nmS0kwYVRbBRU2+rJVw5+mgxDHkBbNMAv8jL
	R1ElWIEkjMNlXE0Hew6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnd1L-0002ro-9V; Wed, 17 Jul 2019 06:02:31 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnd1B-0002rR-NR
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 06:02:23 +0000
Received: by mail-lf1-x141.google.com with SMTP id v85so15459070lfa.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 16 Jul 2019 23:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tx3qcrwb0Cl/A16bzVLhssiY3Kus8frebf0fYKXhfCo=;
 b=VVxYSc/eGiVLR/Wr8HPFaWnGFwLIkXTuIVydqa17dX+jbWxay33qs8DwEEVeY5nEV4
 od9htfDa/k0tubRthJbvm3XuPXecsJ5OfH5RkCpZ7igPa86QBPQOVNJiM9jv201MBJoK
 GdVh/3It18YG+ucbBh4rXCI7O/BpJ8zhN3E/02tZWfwgzj5MN5fdUU81/4ibW5w5O3Es
 adI5IJtQSHXAmkhl3N0+1Im7MZLmY4+Ge2RQ3kKRxdbhSTUPeSxVGyBztVGtWoa+VCyx
 f3DxCidJAUBz/x9mPfqvDC6BeG52HsgwJ/3fl0Bce1mS7cYqbgNmOc0zdCoFz39ZXZN5
 o4yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tx3qcrwb0Cl/A16bzVLhssiY3Kus8frebf0fYKXhfCo=;
 b=EvlQF8l+5bbGvO9MxR+MX4PH6wkylhQ/kfq6OP7wfbQGCEIFvtYQGmkC97rGGHFki6
 tBc7QnVbhHBpxXy3y9RqBMpm0jzEAAh9rVVJijMZuq2mXgigjSnjwarXob9YDxBwBezt
 krpfr2liw1XXlhYHVOAxd+Q1axkGSbnRHff1SMX0lU5NVabbk4baJtq0xJbP8FAdvIZS
 n9vFX/DOmbJfJbHfJ57lKmgBoKWwyDCrd69cz8FwnD80JTTmUxktlW/aTCVqhrN2UwN7
 8hicOCXXWtyWaUELxpVinlZ3cNuuP82xMLTI7Sg7kNOct6P6TLkQfEMboUkjgcS3g8TL
 WzJg==
X-Gm-Message-State: APjAAAWwkkIuEzNFRVOPJUYi72anHVueffE3MGa6SO+5uc9RROnogdoU
 iX3/uNB/UggTCNDqHjVdbZq1vt4a
X-Google-Smtp-Source: APXvYqxHoJ47wv7u4OMFxXVo+GejXLjcX9InXdGOUPNNf8PDxDcbLoLKwAMTZ8gZCAmfDTxjIbzx3Q==
X-Received: by 2002:ac2:44c5:: with SMTP id d5mr17195896lfm.134.1563343339550; 
 Tue, 16 Jul 2019 23:02:19 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m28sm4201996ljb.68.2019.07.16.23.02.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 23:02:18 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 08:02:05 +0200
Message-Id: <20190717060205.18414-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_230221_800218_31B13FCB 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] layerscape: sysupgrade: get rid of
 platform_pre_upgrade()
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKMSkgUkFNRlNfQ09QWV9C
SU4gYW5kIFJBTUZTX0NPUFlfREFUQSBjYW4gYmUgZGVmaW5lZCBhdCB0b3Agb2YgdGhlIGZpbGUK
ICAgbGlrZSBpdCdzIGRvbmUgZm9yIGFsbCBvdGhlciB0YXJnZXRzLgoyKSBmd19wcmludGVudi5s
b2NrIGNhbiBiZSBjcmVhdGVkIG9uZSBzdGVwIGxhdGVyIGluIHRoZQogICBwbGF0Zm9ybV9kb191
cGdyYWRlKCkuIEl0IHNlZW1zIHRvIGJlIHdvcmtpbmcgd2VsbCBvbiBtYW55IG90aGVyCiAgIHRh
cmdldHMuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+
Ci0tLQogLi4uL2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggICAgICAgICAgfCAx
NyArKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbGF5ZXJzY2FwZS9iYXNlLWZp
bGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L2xheWVyc2NhcGUvYmFz
ZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaAppbmRleCAxYzkyNDk5N2U2Li44MjM2YTEy
YmVhIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvbGF5ZXJzY2FwZS9iYXNlLWZpbGVzL2xpYi91
cGdyYWRlL3BsYXRmb3JtLnNoCisrKyBiL3RhcmdldC9saW51eC9sYXllcnNjYXBlL2Jhc2UtZmls
ZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKQEAgLTEsOCArMSwxMSBAQAotCiAjIS9iaW4vc2gK
ICMKICMgQ29weXJpZ2h0IDIwMTUtMjAxOSBUcmF2ZXJzZSBUZWNobm9sb2dpZXMKICMKKworUkFN
RlNfQ09QWV9CSU49Ii91c3Ivc2Jpbi9md19wcmludGVudiAvdXNyL3NiaW4vZndfc2V0ZW52IC91
c3Ivc2Jpbi91YmluZm8gL2Jpbi9lY2hvIgorUkFNRlNfQ09QWV9EQVRBPSIvZXRjL2Z3X2Vudi5j
b25maWcgL3Zhci9sb2NrL2Z3X3ByaW50ZW52LmxvY2siCisKIHBsYXRmb3JtX2RvX3VwZ3JhZGVf
dHJhdmVyc2VfbmFuZHViaSgpIHsKIAlib290c3lzPSQoZndfcHJpbnRlbnYgYm9vdHN5cyB8IGF3
ayAtRj0gJ3t7cHJpbnQgJDJ9fScpCiAJbmV3Ym9vdHN5cz0yCkBAIC0zOSw2ICs0MiwxMCBAQCBw
bGF0Zm9ybV9jaGVja19pbWFnZSgpIHsKIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKSB7CiAJbG9jYWwg
Ym9hcmQ9JChib2FyZF9uYW1lKQogCisJIyBGb3JjZSB0aGUgY3JlYXRpb24gb2YgZndfcHJpbnRl
bnYubG9jaworCW1rZGlyIC1wIC92YXIvbG9jaworCXRvdWNoIC92YXIvbG9jay9md19wcmludGVu
di5sb2NrCisKIAljYXNlICIkYm9hcmQiIGluCiAJdHJhdmVyc2UsbHMxMDQzdiB8IFwKIAl0cmF2
ZXJzZSxsczEwNDNzKQpAQCAtNDksMTEgKzU2LDMgQEAgcGxhdGZvcm1fZG9fdXBncmFkZSgpIHsK
IAkJOzsKIAllc2FjCiB9Ci1wbGF0Zm9ybV9wcmVfdXBncmFkZSgpIHsKLQkjIEZvcmNlIHRoZSBj
cmVhdGlvbiBvZiBmd19wcmludGVudi5sb2NrCi0JbWtkaXIgLXAgL3Zhci9sb2NrCi0JdG91Y2gg
L3Zhci9sb2NrL2Z3X3ByaW50ZW52LmxvY2sKLQotCWV4cG9ydCBSQU1GU19DT1BZX0JJTj0iL3Vz
ci9zYmluL2Z3X3ByaW50ZW52IC91c3Ivc2Jpbi9md19zZXRlbnYgL3Vzci9zYmluL3ViaW5mbyAv
YmluL2VjaG8gJHtSQU1GU19DT1BZX0JJTn0iCi0JZXhwb3J0IFJBTUZTX0NPUFlfREFUQT0iL2V0
Yy9md19lbnYuY29uZmlnIC92YXIvbG9jay9md19wcmludGVudi5sb2NrICR7UkFNRlNfQ09QWV9E
QVRBfSIKLX0KLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
