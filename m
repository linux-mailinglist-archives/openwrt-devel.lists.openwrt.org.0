Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA9112BD55
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 11:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14CQ/FrXbO1jNl6WJhY3sB9vSR4rGwctoh1wSC1O1Gs=; b=uV+vN1KUSFqC6e
	ydjurzbO0/JTkokZOG22JOX8iOqsaiQQLJ/Pac+svORqgcC0ELTotKQRFQqqUaxhC4pTvAhhOWsjF
	QefpXhVZxAtrObTFSEp0uXqGLLVtdleYT/DmHi0ZM1YtTVt1s0dH4u8NCwnsvxzRJXdt4VH93HbbK
	ttW5aCyumu04xqh+s3uN/7nyP1mvnKuafOmnJjfDpv0vyOcCFy2XGKlAS2gmiYopB5LJ5gvL0CMhP
	h7WbLvB1A+JQBxLYXZkFvddXsmECnymqYNTiCkmBCnltQj5qIrW0quy4S06FWzvpy89ee/sHP0qBK
	NZexjN70TWQ5kN+2j5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il9nc-0003ic-Iu; Sat, 28 Dec 2019 10:58:24 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il9nV-0003iH-E5
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 10:58:19 +0000
Received: by mail-lj1-x241.google.com with SMTP id m26so26592243ljc.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 02:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sg+80A/N6l2hwTWyHWuTp2olNsnr34FzBkc9bV2JJqs=;
 b=fazO8vkdHwOou97GMxxR7jZbglEgr9r2EkJGa1d7UlhCJJMRnL7P+/2xTpFdHPWUjF
 ebDCVGz6k6PlqiigbiVvLK1mHcZDccyrkkih3Ee8Q7cKqePkV7p3MABJ02C5ahbRHIM2
 lMY76IlGhL48WP2XKmKboxL4Nn2LLE+yWQSv8CvyJGyMhnOyLr+BRdRXFr1WUFZ+0vi0
 ScjcR/mH3IkseBJS/9zpMFJJu6hvaCGYisUSeG517iYYSJ2/n8o8RoDDu6AodficISHp
 UelHpUdEY+wta+qNXzPZ1YbyphdwP9ClVavb8pf5fVbbzcHuJrIDELuBPphUFRqVoBtM
 JWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sg+80A/N6l2hwTWyHWuTp2olNsnr34FzBkc9bV2JJqs=;
 b=rGipv87dakAR1nld91Pf7Q80zIGXi7KB8ii6m9uuihuSaMMDl0qzOno2TjqlljGr+O
 W7uR9xb/+emGewNbCMkwWAyN9XXpq+A2W4QjfONMoGi+5ZEN4iXlZ8AiSIPcyQ0hNcHL
 xjXh6fesO+MEfsEOrD0Ra66ffk8osgue8lRcKfEcjWQThC+RPqQeyU6BhKcLFehlQPug
 06H/Xj/8whqvf6oBiQrbs8ztVbcYs/No8Bttp12OKaJHnLrh8wo4KQoUsBehBV/5v5TE
 CZrwQTj+UokqRCpXGbcBIU8bCk7s/k9DPy3June+DpwWFwYD2EaaNP8Yqip4kb9LEw9L
 mrWA==
X-Gm-Message-State: APjAAAW5on0DDUcQRqvXknWszZP1Oae4fbScIl3f0ZZ7ZGYfi+p3z2e/
 dBnZI+hTtyIS3xvhjYTuwXksUfbK
X-Google-Smtp-Source: APXvYqwusyL87qYbHD76OCc3GCsPp3TT9qE3gOYD1GKxJrtsT5nk3/ON390UmbYaq4p1EqTY3xUsfQ==
X-Received: by 2002:a2e:9596:: with SMTP id w22mr30575189ljh.21.1577530695608; 
 Sat, 28 Dec 2019 02:58:15 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id z14sm8623290ljm.86.2019.12.28.02.58.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 02:58:15 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Dec 2019 11:58:08 +0100
Message-Id: <20191228105808.5432-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191227085335.10144-1-zajec5@gmail.com>
References: <20191227085335.10144-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_025817_528670_12CD4B87 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Subject: [OpenWrt-Devel] [PATCH V2 fstools] Revert "block: mount_action:
 handle mount/umount deps"
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
 Yousong Zhou <yszhou4tech@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyByZXZlcnRzIGNv
bW1pdCAzMmMzMTI2YjJmMDQ2NDEwNmQ3NDMxNzMzNmI2YWVmMWQ3ZDVmODJmLgoKSW50ZXJuYWwg
bGlzdCBvZiBkZXZpY2VzIGd1YXJhbnRlZXMgc29tZSBiYXNpYyBzb3J0aW5nIChieSBkZXZpY2Ug
dHlwZQphbmQgdGhlbiBhIG5hbWUpIGJ1dCBub3RoaW5nIG1vcmUuIEluIHBhcnRpY3VsYXIgaXQg
Y2Fubm90IGJlIGd1YXJhbnRlZWQKdGhhdCBhbGwgcHJlY2VkaW5nIGVudHJpZXMgYXJlIHBhcmVu
dCBkZXZpY2VzLiBUaGF0IHdvdWxkIHJlcXVpcmUgYSB0cmVlCnN0cnVjdCBpbnN0ZWFkIG9mIGEg
ZmxhdCBsaXN0LgoKSW4gbW9zdCBjYXNlcyBtb3VudGluZyBhbGwgcHJlY2VkaW5nIGRldmljZXMg
cmVzdWx0cyBpbiB1bndhbnRlZCBtb3VudHMuCgpJZiB0aGVyZSBhcmUgMiBkaXNrcyB3aXRoIDIg
cGFydGl0aW9ucyBlYWNoOgpzZGE6IC9kZXYvc2RhMSAvZGV2L3NkYTIKc2RiOiAvZGV2L3NkYjEg
L2Rldi9zZGIyClRoZW4gdXNpbmcgYXV0b2ZzIGFuZCBhY2Nlc3Npbmcgc2RiMiB3b3VsZCByZXN1
bHQgaW4gbW91bnRpbmcgYWxsIDQKcGFydGl0aW9ucyBhbmQgc3Bpbm5pbmcgdW5uZWVkZWQgc2Rh
LgoKSWYgc29tZSBkZXBlbmRlbmN5IGhhbmRsaW5nIGlzIHJlcXVpcmVkIGl0IHNob3VsZCBiZSBp
bXBsZW1lbnRlZApleHBsaWNpdGx5IGFzIGN1cnJlbnQgc29sdXRpb24gaXNuJ3QgcmVsaWFibGUg
YW5kIGl0IGJyZWFrcyBleHBlY3RlZAphdXRvZnMgYmVoYXZpb3IuCgpDYzogWW91c29uZyBaaG91
IDx5c3pob3U0dGVjaEBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8
cmFmYWxAbWlsZWNraS5wbD4KLS0tClYyOiBVcGRhdGUgY29tbWl0IG1lc3NhZ2UKLS0tCiBibG9j
ay5jIHwgNDMgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2Jsb2NrLmMgYi9ibG9jay5jCmluZGV4IGI2ZDQ5YTguLmUwN2NiYzUgMTAwNjQ0Ci0tLSBh
L2Jsb2NrLmMKKysrIGIvYmxvY2suYwpAQCAtMTE5OSw0NyArMTE5OSwzMCBAQCBzdGF0aWMgaW50
IHVtb3VudF9kZXZpY2UoY2hhciAqcGF0aCwgaW50IHR5cGUsIGJvb2wgYWxsKQogCiBzdGF0aWMg
aW50IG1vdW50X2FjdGlvbihjaGFyICphY3Rpb24sIGNoYXIgKmRldmljZSwgaW50IHR5cGUpCiB7
Ci0Jc3RydWN0IGRldmljZSAqdGhlX2RldiwgKmRldjsKIAljaGFyIHBhdGhbMzJdOwogCiAJaWYg
KCFhY3Rpb24gfHwgIWRldmljZSkKIAkJcmV0dXJuIC0xOwotCi0JaWYgKGNvbmZpZ19sb2FkKE5V
TEwpKQotCQlyZXR1cm4gLTE7Ci0JY2FjaGVfbG9hZCgwKTsKLQotCXRoZV9kZXYgPSBmaW5kX2Js
b2NrX2RldmljZShOVUxMLCBOVUxMLCBkZXZpY2UpOworCXNucHJpbnRmKHBhdGgsIHNpemVvZihw
YXRoKSwgIi9kZXYvJXMiLCBkZXZpY2UpOwogCiAJaWYgKCFzdHJjbXAoYWN0aW9uLCAicmVtb3Zl
IikpIHsKIAkJaWYgKHR5cGUgPT0gVFlQRV9IT1RQTFVHKQogCQkJYmxvY2tkX25vdGlmeShkZXZp
Y2UsIE5VTEwsIE5VTEwpOwogCi0JCWlmICghdGhlX2RldiB8fCAhdGhlX2Rldi0+bSB8fCB0aGVf
ZGV2LT5tLT50eXBlICE9IFRZUEVfTU9VTlQpIHsKLQkJCXNucHJpbnRmKHBhdGgsIHNpemVvZihw
YXRoKSwgIi9kZXYvJXMiLCBkZXZpY2UpOwotCQkJdW1vdW50X2RldmljZShwYXRoLCB0eXBlLCB0
cnVlKTsKLQkJfSBlbHNlCi0JCQl2bGlzdF9mb3JfZWxlbWVudF90b19sYXN0X3JldmVyc2UoJmRl
dmljZXMsIHRoZV9kZXYsIGRldiwgbm9kZSkKLQkJCQlpZiAoZGV2LT5tICYmIGRldi0+bS0+dHlw
ZSA9PSBUWVBFX01PVU5UKQotCQkJCQl1bW91bnRfZGV2aWNlKGRldi0+cHItPmRldiwgdHlwZSwg
dHJ1ZSk7CisJCXVtb3VudF9kZXZpY2UocGF0aCwgdHlwZSwgdHJ1ZSk7CisKIAkJcmV0dXJuIDA7
Ci0JfSBlbHNlIGlmICghc3RyY21wKGFjdGlvbiwgImFkZCIpKSB7Ci0JCWlmICghdGhlX2RldikK
LQkJCXJldHVybiAtMTsKLQkJaWYgKHRoZV9kZXYtPm0gJiYgdGhlX2Rldi0+bS0+dHlwZSA9PSBU
WVBFX01PVU5UKSB7Ci0JCQl2bGlzdF9mb3JfZmlyc3RfdG9fZWxlbWVudCgmZGV2aWNlcywgdGhl
X2RldiwgZGV2LCBub2RlKSB7Ci0JCQkJaWYgKGRldi0+bSAmJiBkZXYtPm0tPnR5cGUgPT0gVFlQ
RV9NT1VOVCkgewotCQkJCQlpbnQgZXJyID0gbW91bnRfZGV2aWNlKGRldiwgdHlwZSk7Ci0JCQkJ
CWlmIChlcnIpCi0JCQkJCQlyZXR1cm4gZXJyOwotCQkJCX0KLQkJCX0KLQkJCXJldHVybiAwOwot
CQl9IGVsc2UKLQkJCXJldHVybiBtb3VudF9kZXZpY2UodGhlX2RldiwgdHlwZSk7CisJfSBlbHNl
IGlmIChzdHJjbXAoYWN0aW9uLCAiYWRkIikpIHsKKwkJVUxPR19FUlIoIlVua293biBhY3Rpb24g
JXNcbiIsIGFjdGlvbik7CisKKwkJcmV0dXJuIC0xOwogCX0KLQlVTE9HX0VSUigiVW5rb3duIGFj
dGlvbiAlc1xuIiwgYWN0aW9uKTsKLQlyZXR1cm4gLTE7CisKKwlpZiAoY29uZmlnX2xvYWQoTlVM
TCkpCisJCXJldHVybiAtMTsKKwljYWNoZV9sb2FkKDApOworCisJcmV0dXJuIG1vdW50X2Rldmlj
ZShmaW5kX2Jsb2NrX2RldmljZShOVUxMLCBOVUxMLCBwYXRoKSwgdHlwZSk7CiB9CiAKIHN0YXRp
YyBpbnQgbWFpbl9ob3RwbHVnKGludCBhcmdjLCBjaGFyICoqYXJndikKLS0gCjIuMjEuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
