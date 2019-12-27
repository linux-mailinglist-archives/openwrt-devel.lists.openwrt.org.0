Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF15512B46F
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 13:09:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZRLuZgv3aKtsTAFBVz0vzxP4L8MkaYiEo/cDp1m55Pc=; b=Nx5naxuBg39SBK
	L6zD+v/VxvlTlCrLuiheHECzXn8djv51KB4dsEP4ahUjLM/2IA9d8pQ3pm5UTTr0JoiZ+uhQxeYnL
	2ZneDaat/pZRrHeH4Lhr4NfThZHz3XBfq2uboa6VyhOTFsPSn8XyOdmsQDcWrf4CN+k7HPu6XSAVk
	QjHpDYHO7SfrioFSdQ7mVY/+3W0fcoOs5myjcjHP7tghYjXTcGu3bqFrH6SlVItVf184EOLoqDR7X
	7AsoTXP8U0homblGzKtizj1nnai0UZfKAzGKls1NDHA9rdD+j0YvbjwIziptX58x+oVswHsnXCc7f
	GO+EjpDoH3m7TuduvCog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikoQo-0007AH-Hp; Fri, 27 Dec 2019 12:09:26 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikoQk-00079y-9c
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 12:09:23 +0000
Received: by mail-lj1-x243.google.com with SMTP id o13so15547577ljg.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Dec 2019 04:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Albt9xSbCPrsg6Vzc2roUyvk1qEFVVAMic+PZBXrslo=;
 b=TqlBErLTSAMKBVMIAmkowPokb+8v+RSicxMGvNxP3jc5B6lUPD1ibcXjffHUThNYl/
 mazIDvAgNx2Px5kG17h0yd8XQRHJXkjUg7jZG793gGp/CAwk/f9TIqrCw8SL9S+Nx654
 plC//UJur7ddks5fyNxxY3vSXUMMggUyJjRl1vmEUre9ZbTtROxn8iYHuUVGS84lsMyq
 FfZQUL/UPFLX0fTehLx0mY3FLVp9ksZVgEB8VdLqsBpFlffWo+QpQjG4kn3OT7caI8nq
 vy0Q+TaXy81EkKl8hVaq2SAUoa9EyUeHOpfAYKrWY4cBnUTn99sQNtSP72nt/8u6uMC7
 VCPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Albt9xSbCPrsg6Vzc2roUyvk1qEFVVAMic+PZBXrslo=;
 b=qNLZFf2rX1rSbIVVa5DneJR368xHVsdOz56VRuo4FC0IFeYEgMAR/VsGrPLSG2op2n
 AJf9wbH8jB6F8yi6pWabjPmtzUGFzPIrfpIIYUtVP8Cjt8yFodSZXws7OHO25LQTudJd
 iFP9Iie+YKhUmt/OpqT8NA2ic5kXHvygOaqthewF92puFdtmPhh9Hecu29HfdZaGtHHD
 6rCZGx8Pe9ZKHcxpLo1u4opdPhxo9iCGZR2QcXYXkf68XHnjGHOht1ZFruB9a6ARxxH5
 uv/P73BViah9Bpk1QmF+dyAQw3MP0dfOewxMTYIeY///NTWwLhmyvj4sbAQXam06AQKe
 Wl9w==
X-Gm-Message-State: APjAAAUKQjSrT2Et0/abMDOs1LwucVRDoyRUvYAzr9GR8iBxfOUdKCm7
 kS7wVM5imdUqmQ1bFeFniWWuiIs7
X-Google-Smtp-Source: APXvYqzrDQ8Kq7SP7EX20wAHHS7Yz76J88mIGVzQUDEj2zaNKn68B8xarxgfWbty+e3Scii+cQVOLQ==
X-Received: by 2002:a2e:918c:: with SMTP id f12mr28343555ljg.66.1577448559023; 
 Fri, 27 Dec 2019 04:09:19 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id u25sm14561033lfk.46.2019.12.27.04.09.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Dec 2019 04:09:18 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Dec 2019 13:09:11 +0100
Message-Id: <20191227120911.9236-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_040922_359020_EAD29013 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH fstools] blockd: report "target" path as
 "mount" for autofs available mounts
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKRGV2aWNlcyBoYW5kbGVk
IHdpdGggYXV0b2ZzIHNob3VsZCBiZSBzZWVuIGFzIGF2YWlsYWJsZSBldmVuIGlmCmN1cnJlbnRs
eSB1bm1vdW50ZWQuIE1vdW50aW5nIGlzIGhhbmRsZWQgb24gZGVtYW5kIGFuZCB0cmFuc3BhcmVu
dGx5IGZvcgp1c2Vycy4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWls
ZWNraS5wbD4KLS0tCiBibG9ja2QuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9ibG9ja2QuYyBiL2Jsb2NrZC5jCmluZGV4IGUwNzUzMGMuLmJh
NGFmZGQgMTAwNjQ0Ci0tLSBhL2Jsb2NrZC5jCisrKyBiL2Jsb2NrZC5jCkBAIC0yODMsNiArMjgz
LDggQEAgYmxvY2tfaW5mbyhzdHJ1Y3QgdWJ1c19jb250ZXh0ICpjdHgsIHN0cnVjdCB1YnVzX29i
amVjdCAqb2JqLAogCQlpZiAobXApIHsKIAkJCWJsb2Jtc2dfYWRkX3N0cmluZygmYmIsICJtb3Vu
dCIsIG1wKTsKIAkJCWZyZWUobXApOworCQl9IGVsc2UgaWYgKGRldmljZS0+YXV0b2ZzICYmIGRl
dmljZS0+dGFyZ2V0KSB7CisJCQlibG9ibXNnX2FkZF9zdHJpbmcoJmJiLCAibW91bnQiLCBkZXZp
Y2UtPnRhcmdldCk7CiAJCX0KIAkJYmxvYm1zZ19jbG9zZV90YWJsZSgmYmIsIHQpOwogCX0KLS0g
CjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
