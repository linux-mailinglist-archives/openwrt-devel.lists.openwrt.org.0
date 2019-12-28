Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A0812BF4F
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 22:08:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRtTqr7/Tow+GXSO/LVatrmvN5teIjejBxHxy4TBM6Q=; b=Y9WsOvnQ2Xzm+j
	cB1TG4KA5/dAK/tM0N9a+dLeyKORYxPXf7fDRNla417FZpQcSd+e85SGyR7fKjJuhtTaUkUymsqFZ
	4DRKiKz8F8yWaZurrCKGl1PvExYQhm64/gfOkWAJfRyvpG6f74KpTvFn5OLZZjZCUsGRna/ApyAzd
	c5gPQVZMcCYz/yyuGkdZimbtPTlfH6Ob8xbAw4P+3NkfRklYxtY5KbZ6YccFFYDLfJbF5Ncb8F4ug
	qYubCIO2vCFiZBuqpRSfU6LaP1Hz4/x9baB3YKTtK/5/ww1OL/nXrCGcTRcrERa8fYsyqki+2pFr3
	Taad3r1fmlxtr9Es7kyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJJe-0002I8-FR; Sat, 28 Dec 2019 21:08:06 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJJC-0001lD-23
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 21:07:39 +0000
Received: by mail-lf1-x144.google.com with SMTP id l18so14746312lfc.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 13:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w3mq1VptRplcygfJXtxIaU478FivwxiyVRUn5OYh/UU=;
 b=CAs4pWJYCibcLN5RV/xJHOTwfLzyiW6jsaKGCvC/gaVFCa0WLHUVDe25L995zvKQWG
 MZGSsSVF+T6APalSWU7wVrdv+ZHRB4uFjdqwGruFsJfXpgJR7ZdP8oVTrtM47nI9zOj9
 vJpG4ZCoXsmC5w2ESC9mTrly3nC6UsrX56Q/ymsIjj2gSY11rVaOrXx3+tnI7kLAmJ1g
 92AaEW5eHLUeEc+xLtu5Uk5kHmOUK9ulvadpn5MQpkfOIYE5TBNwxxRVIpjK4JEvXavQ
 Q4UAyAKGVYgqeHGXRoMguzA7v92MgyQogqDxa9NwgsokOrIDqnoGmq0GMI3pz3vdW+g7
 sZow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w3mq1VptRplcygfJXtxIaU478FivwxiyVRUn5OYh/UU=;
 b=crFNjTjg6HwOfgtEU2Ksee38J+Dh0A+JaeGn9x+YUBfCbE7DTA+VUGY+ZeHDH4WpZx
 AdbpLcNUJG06mry+7caGK5JU9Abuh5tRmBNkA0NhD2CW30FwMvz0Bg0ZKwpFZlLAqJmj
 u8EoV9rTSEEG7iUqBDxz1GLUL9MdLtIjJCM9d2JSSknj0S8RbkCcWOxmgGC03HOZpIuW
 gM3P5wsn+bTM8leVle4Bv9AqPQmzOPKrjZrF7h2SufNCD48mbNALYCCePQIaLAU0TA2t
 8gXc3Vr5PXQaldToHXDVPKFqNjx3maqLZVyr4I/9rIMgNQ0LYp328thpynUR/WoZEJoT
 NShw==
X-Gm-Message-State: APjAAAWk9lAYExjUp8LQ89YKg+DjVhTNGQkW65xVndpjbRHO9HZ6x1AQ
 KNrkPYay07HruplPPIcXa82UvHzc
X-Google-Smtp-Source: APXvYqwr6JLafRGlY8w4iJNJFnVGAnHaOYTbIVzIhCIJGa2S6vfKWVhIdNATd5Sxdr1YzJIFl2H67g==
X-Received: by 2002:a19:4ac2:: with SMTP id
 x185mr34616613lfa.131.1577567256188; 
 Sat, 28 Dec 2019 13:07:36 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m189sm16641767lfd.92.2019.12.28.13.07.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 13:07:35 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Dec 2019 22:07:22 +0100
Message-Id: <20191228210722.1407-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191228210722.1407-1-zajec5@gmail.com>
References: <20191228210722.1407-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_130738_100923_ADA882C9 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Subject: [OpenWrt-Devel] [PATCH fstools 2/2] blockd: remove symlink linkpath
 file if it's a dir or link
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKRmlsZXMgbGlrZSB0aGF0
IGNhbiByZW1haW4gZnJvbSB1c2luZyBub24tYXV0b2ZzIG1vdW50aW5nIGFuZCBjYW4gY2F1c2UK
bW91bnRpbmcgZXJyb3JzIGFmdGVyIHN3aXRjaGluZyB0byBhdXRvZnM6CmJsb2NrZDogZmFpbGVk
IHRvIHN5bWxpbmsgL21udC9zZGExLT4vdG1wL3J1bi9ibG9ja2Qvc2RhMQoKU2lnbmVkLW9mZi1i
eTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIGJsb2NrZC5jIHwgNyAr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYmxv
Y2tkLmMgYi9ibG9ja2QuYwppbmRleCBlMDc1MzBjLi5mOTc3ZmI3IDEwMDY0NAotLS0gYS9ibG9j
a2QuYworKysgYi9ibG9ja2QuYwpAQCAtMTMxLDEyICsxMzEsMTkgQEAgZGV2aWNlX2ZyZWUoc3Ry
dWN0IGRldmljZSAqZGV2aWNlKQogc3RhdGljIHZvaWQKIGRldmljZV9hZGQoc3RydWN0IGRldmlj
ZSAqZGV2aWNlKQogeworCXN0cnVjdCBzdGF0IHN0OwogCWNoYXIgcGF0aFs2NF07CiAKIAlpZiAo
IWRldmljZS0+YXV0b2ZzKQogCQlyZXR1cm47CiAKIAlzbnByaW50ZihwYXRoLCBzaXplb2YocGF0
aCksICIvdG1wL3J1bi9ibG9ja2QvJXMiLCBkZXZpY2UtPm5hbWUpOworCWlmICghbHN0YXQoZGV2
aWNlLT50YXJnZXQsICZzdCkpIHsKKwkJaWYgKFNfSVNMTksoc3Quc3RfbW9kZSkpCisJCQl1bmxp
bmsoZGV2aWNlLT50YXJnZXQpOworCQllbHNlIGlmIChTX0lTRElSKHN0LnN0X21vZGUpKQorCQkJ
cm1kaXIoZGV2aWNlLT50YXJnZXQpOworCX0KIAlpZiAoc3ltbGluayhwYXRoLCBkZXZpY2UtPnRh
cmdldCkpCiAJCVVMT0dfRVJSKCJmYWlsZWQgdG8gc3ltbGluayAlcy0+JXNcbiIsIGRldmljZS0+
dGFyZ2V0LCBwYXRoKTsKIAllbHNlCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
