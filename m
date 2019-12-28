Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532E212BF4E
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 22:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/4cxKXLBFyAfuaHMFCs8NCd/51cAAVAW8tdAN9InSY=; b=J4g4h2mVIzI5Uo
	gXWsRZyJcTUMDRvbEufqztsp26i8I+zKeRxbnABahum3L1VA7/D0Spv24U2MtNyeklK+7SwrQoZfK
	UM+IO54P2G5gyrRTNmOqfWE7dD3i8hwc5+07Mm6Mv0Bccl7FS6fECOJmBooSVJrcCv3BHm0aFClxk
	6cji5imxI/X7aWTzl4Rk3Vgaih/YdaPI7GbGM7Cmb5VFsUV+zyh6eFAfK1Ca4oRXq+ZlHUDRV/h+v
	Xf+1u0MJz9W/3C0BLo2JZTZPwcNupphkcV/9RsuOLHTHE5itijteV2mhD2bAeqEN5yrqlg5Rl1O3J
	SlHrgTWzB6wdx6Su1uKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJJU-00021T-El; Sat, 28 Dec 2019 21:07:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJJA-0001kX-79
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 21:07:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id y4so15554234ljj.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 13:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rL1qZ9babPASC2pxUowTLicMLsCQrPtoyvdEJfeFQmw=;
 b=mL4QHpFfzRvhypaKf/UwmManrYprpQpM9ZuZlenRcJ5j8dLy31vFh67m4NAynIjfRh
 BcaLT2P3HiZLf1exPvfnOuU0uW2nZNDyy1dlJsQSYgCB+v4OgMrWbv2ZQGQ05k+TkBJP
 bheM9AXgPtPpSuBZ+jA4vrPdA9MkI+5R2i+ZBsq5gF+DilhYGGnCON+SsdfTuf7i70v3
 Uu+kUH4qDUZcWotmCPsxZzL0swWXZPb5ZF2zpckZlwcAZcD0ENlKnKOaVAPfyPkEuk4F
 ev3jRfx56/+C0Pq8ljz0KV3iN42vvPMIkAlKuONxe8SPxOO6ewyNHqYJTiW0+LTXv7id
 XbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rL1qZ9babPASC2pxUowTLicMLsCQrPtoyvdEJfeFQmw=;
 b=giWa8NBJupyoyG/gvnr7lXlXwv0VuYcQzCXhFFhnVlsgoaNWckDAkNRTqJ5EfhEiKm
 2Lh+NhS32sZX6Lnd+kfZFGl/4sjrg1c7+aBmsEpbenTaGmHGjmsiUKvAsTM1DiFAY3hC
 MMJFYWEFKLhypI5A7/Cj5LiDOub4+uz8JfQgReFSZT4MzkkLGhQKdS1MXIvkzrJDwfjO
 wDJHlmqeLf8yu4vaRFhtLCE6i8WR+H7e3qFsfni5pemdXTsjKtYIggAqdSUAipVkpilk
 3lFO7SSTUGVEyxvBCwfC2EnBB+5itj1wceAPhu0dbwDpnlJi8XxkrGWCP2ACZR53X4Iu
 AfNg==
X-Gm-Message-State: APjAAAXMyA/xmvqRgFKZoNP0EEnZnPBgu3537POSUkm2/r/ZmaByfzeP
 Yeyw+UxkBqvygxKP9pK3At+Aeimq
X-Google-Smtp-Source: APXvYqwUmbreAonqGnrxURhmsGtUxepEKMY9sbuMxoe/EW7bBprnLH0qVnAaSS+2YHo0niMOj97F4Q==
X-Received: by 2002:a2e:97d9:: with SMTP id m25mr18308573ljj.146.1577567254150; 
 Sat, 28 Dec 2019 13:07:34 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m189sm16641767lfd.92.2019.12.28.13.07.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 13:07:33 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Dec 2019 22:07:21 +0100
Message-Id: <20191228210722.1407-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191228210722.1407-1-zajec5@gmail.com>
References: <20191228210722.1407-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_130736_458283_68678295 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH fstools 1/2] block: remove mount target file
 if it's a link
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKTGlua3MgbGlrZSB0aGF0
IGNhbiByZW1haW4gZnJvbSB1c2luZyBhdXRvZnMgYW5kIGNhbiBjYXVzZSBtb3VudGluZwplcnJv
cnMgYWZ0ZXIgc3dpdGNoaW5nIHRvIG5vbi1hdXRvZnM6CgpibG9jazogbW91bnRpbmcgL2Rldi9z
ZGExICh2ZmF0KSBhcyAvbW50L3NkYTEgZmFpbGVkICgyKSAtIE5vIHN1Y2ggZmlsZSBvciBkaXJl
Y3RvcnkKClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4K
LS0tCiBibG9jay5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9ibG9jay5jIGIvYmxvY2suYwppbmRleCBlMDdjYmM1Li4wNmY3NWQzIDEwMDY0
NAotLS0gYS9ibG9jay5jCisrKyBiL2Jsb2NrLmMKQEAgLTEwNzIsNiArMTA3Miw3IEBAIHN0YXRp
YyBpbnQgbW91bnRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IHR5cGUpCiB7CiAJc3Ry
dWN0IG1vdW50ICptOwogCXN0cnVjdCBwcm9iZV9pbmZvICpwcjsKKwlzdHJ1Y3Qgc3RhdCBzdDsK
IAljaGFyIF90YXJnZXRbMzJdOwogCWNoYXIgKnRhcmdldDsKIAljaGFyICpkZXZpY2U7CkBAIC0x
MTU0LDYgKzExNTUsOCBAQCBzdGF0aWMgaW50IG1vdW50X2RldmljZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsIGludCB0eXBlKQogCQljaGVja19maWxlc3lzdGVtKHByKTsKIAogCW1rZGlyX3AodGFyZ2V0
KTsKKwlpZiAoIWxzdGF0KHRhcmdldCwgJnN0KSAmJiBTX0lTTE5LKHN0LnN0X21vZGUpKQorCQl1
bmxpbmsodGFyZ2V0KTsKIAogCWVyciA9IGhhbmRsZV9tb3VudChwci0+ZGV2LCB0YXJnZXQsIHBy
LT50eXBlLCBtKTsKIAlpZiAoZXJyKSB7Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
