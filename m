Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3565719D920
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 16:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SLaNBen9ZYse+lQlrS3d6WaKHpOKQXfA0SAqliKFUQs=; b=QSajmR0aUBIJbk
	5HMPa4MHcH+Qq6rUtv7fnAPCvXq+KBPvA6kH7nVmv7AUxkz7fjttBQYdNlD4FcJeGdSiaZ6J7vcQ1
	ok97cCv9sVSB050hwv6Va6Y2CmKXp8HdiH/0Xlon//h9NhrcLVMDIx90YJEqiizJ98S9XBuaCRXvb
	Pf0cJiGPCZ28jVAZm4tXniUwwgjBec02Kz33Q7pcQLAqI00zQxZDRQTCJ1rzW9w+PiZ1MrVDJdZUG
	FgPZFrGHxmvZyDGjulRyzE5PAe0z4WOAZV3utXM4YrJsO+hZjD75ib6qibhOCgQ6P0prirsvw6pHh
	4YOa9LVOxMxMWdF9lHlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKNKQ-0005yv-GJ; Fri, 03 Apr 2020 14:29:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKNKJ-0005xt-NR
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 14:29:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id b1so7165399ljp.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Apr 2020 07:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FEerx/YSCeI+zFAniEStacsjOb/m16A7wxDeV6hXc+c=;
 b=Q7sr7Rhw4Gt4VFGV/0HXXI78EOVEGyVGXxEGlrRxHcFXR6XQjIMnPiLh3b0Npc9HsX
 hexRYeD7xT3XrTs2gD/3BF0n/Q9vVav1K7EXSUcxn+ddYUbibYJf+g5JfmQE+reyhcv1
 MGRBpB181Du57NLgaRMNH3TzBd/j5is96ZpWcdMWtSqeveDL1AMqJANJ6jqZkL+PGKZh
 3fsxuR10HR9YFOjH9y4SNaM5ApF10b7ORF8d522jhi/BqkH2UlI3UAuSGd3xJ6eDbjj9
 ujsb9fKw9cPqGHhYvBflnMj4yhIq7DYYBBxSo7Del/0kds6IzYrRMGEwS5ZNr8372R3L
 S2PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FEerx/YSCeI+zFAniEStacsjOb/m16A7wxDeV6hXc+c=;
 b=fXQoHLwgckW2HPl6pJb5R5gZf6osNDuOfkvj/t2bNPuUx5B9J4P8VbqgcsC2yuxsLQ
 hWrWz6QGc0n3d4kdnouvUEwmuNJ18Ue9O4xQmk4QgNm/InbOpV7CxgNEl9za2jjyADlh
 FIi9retTGdOotV7xWRDnnq//swhZxYiv+L5wihiAyQjmnxctlaM4GYy68R/vM/0kjTIv
 Xv4RCuAO2Kt3zC81kOgaaF7baL83k/ivNrRmSogNuE72iTyPgYK7RfMRwjrsdRLGxCn4
 oVVJSiERk//i+6h9Y1ylRESTr7VIs2YGGDSHDx/TMfBC28LfcBpMtbVvOd75Z49vTxNm
 u+eQ==
X-Gm-Message-State: AGi0PuZHFf/tt7jBzKkRIjnayKGAqM0EYae3iwUyV7qUTNFehB3QtV0j
 h8QyTCYHDuRgWJkNNrtDfYvu+/GS
X-Google-Smtp-Source: APiQypJLCZMFGy4SUb4GbNKFh74NcDVzjflIaTtXlpknUoU6nlLUY4k2qFYLCfiGx9ezBvicRvFDeg==
X-Received: by 2002:a2e:9652:: with SMTP id z18mr574027ljh.79.1585924180275;
 Fri, 03 Apr 2020 07:29:40 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id d6sm6940827lfn.72.2020.04.03.07.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 07:29:39 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 16:29:30 +0200
Message-Id: <20200403142930.10236-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_072944_085371_5B85DE31 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: reorder board.d code in 02_network
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKUmVvcmRlciBleGlzdGlu
ZyBjb2RlIHNvIHRoYXQ6CjEuIFN3aXRjaCBjb25maWcgZ2V0cyBoYW5kbGVkIGZpcnN0CjIuIFdB
TiBpbnRlcmZhY2UgZ2VuZXJpYyBjb2RlIGdldHMgYWx3YXlzIGV4ZWN1dGVkCgpCZWZvcmUgdGhp
cyBjaGFuZ2UgV0FOIGludGVyZmFjZSBjb2RlIHdhc24ndCBleGVjdXRlZCBvbiBhbGwgZGV2aWNl
cyBkdWUKdG8gZWFybHkgImV4aXQgMCIuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kg
PHJhZmFsQG1pbGVja2kucGw+Ci0tLQogLi4uL2JjbTUzeHgvYmFzZS1maWxlcy9ldGMvYm9hcmQu
ZC8wMl9uZXR3b3JrIHwgOTggKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQx
IGluc2VydGlvbnMoKyksIDU3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9iY201M3h4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayBiL3RhcmdldC9saW51
eC9iY201M3h4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawppbmRleCA5ZmQyNmU3
MmY0Li5mOWNlZGZmNWI1IDEwMDc1NQotLS0gYS90YXJnZXQvbGludXgvYmNtNTN4eC9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTUzeHgvYmFz
ZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCkBAIC0xMCw1MCArMTAsNzkgQEAgYm9hcmRf
Y29uZmlnX3VwZGF0ZQogCiBib2FyZD0kKGJvYXJkX25hbWUpCiAKKyMgT24gQkNNNDcwOCAvIEJD
TTQ3MDkoNCkgdGhlcmUgYXJlIDMgRXRoZXJuZXQgaW50ZXJmYWNlcyBjb25uZWN0ZWQgdG8gMyBz
d2l0Y2gKKyMgcG9ydHMuIEl0J3MgdXAgdG8gdmVuZG9yIGRlc2lnbiB3aGljaCB0byB1c2UuCiBj
YXNlICIkYm9hcmQiIGluCiB0ZW5kYSxhYzkpCiAJdWNpZGVmX2FkZF9zd2l0Y2ggInN3aXRjaDAi
IFwKIAkJIjE6bGFuIiAiMjpsYW4iICIzOmxhbiIgIjQ6bGFuIiAiOEBldGgwIiAiMDp3YW4iICI1
QGV0aDEiCi0JYm9hcmRfY29uZmlnX2ZsdXNoCi0JZXhpdCAwCiAJOzsKIGJ1ZmZhbG8sd3hyLTE5
MDBkaHB8IFwKIGJ1ZmZhbG8sd3pyLTE3NTBkaHApCiAJdWNpZGVmX2FkZF9zd2l0Y2ggInN3aXRj
aDAiIFwKIAkJIjA6bGFuOjEiICIxOmxhbjoyIiAiMjpsYW46MyIgIjM6bGFuOjQiICI0Ondhbjo1
IiAiNUBldGgwIgotCWJvYXJkX2NvbmZpZ19mbHVzaAotCWV4aXQgMAorCTs7CitkbGluayxkaXIt
ODg1bCB8IFwKK25ldGdlYXIscjc5MDAgfCBcCituZXRnZWFyLHI4MDAwIHwgXAorbmV0Z2Vhcixy
ODUwMCkKKwkjIE5WUkFNIHNwZWNpZmllcyBwb3J0IDggKGV0aDIpIC0gdW5zdXBwb3J0ZWQgYnkg
T3BlbldydCBiNTMKKwkjIFVzZSBwb3J0IDUgKGV0aDApIGFzIHdvcmthcm91bmQKKwl1Y2lkZWZf
YWRkX3N3aXRjaCAic3dpdGNoMCIgXAorCQkiMDpsYW4iICIxOmxhbiIgIjI6bGFuIiAiMzpsYW4i
ICI0OndhbiIgIjV0QGV0aDAiCisKKwkjIEFzIHZlbmRvciBkb2Vzbid0IHVzZSBldGgwIGl0cyBN
QUMgbWF5IGJlIG1pc3NpbmcuIFVzZSBvbmUgZnJvbSBldGgyLgorCWV0Mm1hY2FkZHI9IiQobnZy
YW0gZ2V0IGV0Mm1hY2FkZHIpIgorCVsgLW4gIiRldDJtYWNhZGRyIiBdICYmIHVjaWRlZl9zZXRf
aW50ZXJmYWNlX21hY2FkZHIgImxhbiIgIiRldDJtYWNhZGRyIgogCTs7CiBsdXh1bCxhYnItNDUw
MC12MXxcCiBsdXh1bCx4YnItNDUwMC12MSkKIAl1Y2lkZWZfYWRkX3N3aXRjaCAic3dpdGNoMCIg
XAogCQkiMDp3YW4iICIxOmxhbjo0IiAiMjpsYW46MyIgIjM6bGFuOjIiICI0OmxhbjoxIiAiNUBl
dGgwIgotCWJvYXJkX2NvbmZpZ19mbHVzaAotCWV4aXQgMAogCTs7CiBwaGljb21tLGszKQogCXVj
aWRlZl9hZGRfc3dpdGNoICJzd2l0Y2gwIiBcCiAJCSIwOmxhbiIgIjE6bGFuIiAiMjpsYW4iICIz
OndhbiIgIjVAZXRoMCIKLQlib2FyZF9jb25maWdfZmx1c2gKLQlleGl0IDAKLSAgICA7OworCTs7
CisqKQorCSMgTlZSQU0gZW50cmllcyBtYXkgY29udGFpbiB1bnNvcnRlZCBwb3J0cywgZS5nLiBO
ZXRnZWFyIFI2MjUwIHVzZXMKKwkjIHZsYW4xcG9ydHM9MyAyIDEgMCA1KgorCSMgdmxhbjJwb3J0
cz00IDV1CisJIyBhbmQgZWFybHkgTmV0Z2VhciBSODAwMCB3YXMgdXNpbmcKKwkjIHZsYW4xcG9y
dHM9MyAyIDEgMCA1IDcgOCoKKwl2bGFuMXBvcnRzPSIkKGVjaG8gJChudnJhbSBnZXQgdmxhbjFw
b3J0cyB8IHRyICIgIiAiXG4iIHwgc29ydCkpIgorCXZsYW4ycG9ydHM9IiQoZWNobyAkKG52cmFt
IGdldCB2bGFuMnBvcnRzIHwgdHIgIiAiICJcbiIgfCBzb3J0KSkiCisJaWYgZWNobyAiJHZsYW4x
cG9ydHMiIHwgZWdyZXAgLXEgIl4xIDIgMyA0IDUiICYmIFwKKwkgICBlY2hvICIkdmxhbjJwb3J0
cyIgfCBlZ3JlcCAtcSAiXjAgNSI7IHRoZW4KKwkJdWNpZGVmX2FkZF9zd2l0Y2ggInN3aXRjaDAi
IFwKKwkJCSIxOmxhbiIgIjI6bGFuIiAiMzpsYW4iICI0OmxhbiIgIjA6d2FuIiAiNXRAZXRoMCIK
KwllbGlmIGVjaG8gIiR2bGFuMXBvcnRzIiB8IGVncmVwIC1xICJeMSAyIDMgNSA3IiAmJiBcCisJ
ICAgICBlY2hvICIkdmxhbjJwb3J0cyIgfCBlZ3JlcCAtcSAiXjAgNyI7IHRoZW4KKwkJdWNpZGVm
X2FkZF9zd2l0Y2ggInN3aXRjaDAiIFwKKwkJCSIxOmxhbiIgIjI6bGFuIiAiMzpsYW4iICI1Omxh
biIgIjA6d2FuIiAiN3RAZXRoMSIKKwllbGlmIGVjaG8gIiR2bGFuMXBvcnRzIiB8IGVncmVwIC1x
ICJeMCAxIDIgMyA1IDcgOCIgJiYgXAorCSAgICAgZWNobyAiJHZsYW4ycG9ydHMiIHwgZWdyZXAg
LXEgIl40IDgiOyB0aGVuCisJCXVjaWRlZl9hZGRfc3dpdGNoICJzd2l0Y2gwIiBcCisJCQkiMDps
YW4iICIxOmxhbiIgIjI6bGFuIiAiMzpsYW4iICI1OmxhbiIgIjc6bGFuIiAiNDp3YW4iICI4dEBl
dGgyIgorCWVsc2UKKwkJdWNpZGVmX2FkZF9zd2l0Y2ggInN3aXRjaDAiIFwKKwkJCSIwOmxhbiIg
IjE6bGFuIiAiMjpsYW4iICIzOmxhbiIgIjQ6d2FuIiAiNXRAZXRoMCIKKwlmaQorCTs7CiBlc2Fj
CiAKIHdhbl9tYWNhZGRyPSIkKG52cmFtIGdldCB3YW5faHdhZGRyKSIKIGNhc2UgIiRib2FyZCIg
aW4KIGFzdXMscnQtYWM4N3UpCi0JaWZuYW1lPWV0aDEKIAlldFhtYWNhZGRyPSQobnZyYW0gZ2V0
IGV0MW1hY2FkZHIpCiAJOzsKIGRsaW5rLGRpci04ODVsIHwgXAogbmV0Z2VhcixyNzkwMCB8IFwK
IG5ldGdlYXIscjgwMDAgfCBcCiBuZXRnZWFyLHI4NTAwKQotCWlmbmFtZT1ldGgyCiAJZXRYbWFj
YWRkcj0kKG52cmFtIGdldCBldDJtYWNhZGRyKQogCTs7CiAqKQotCWlmbmFtZT1ldGgwCiAJZXRY
bWFjYWRkcj0kKG52cmFtIGdldCBldDBtYWNhZGRyKQogCTs7CiBlc2FjCkBAIC02MSw1MSArOTAs
NiBAQCBlc2FjCiAjIElmIFdBTiBNQUMgaXNuJ3QgZXhwbGljaXRseSBzZXQsIGNhbGN1bGF0ZSBp
dCB1c2luZyBiYXNlIE1BQyBhcyByZWZlcmVuY2UuCiBbIC16ICIkd2FuX21hY2FkZHIiIC1hIC1u
ICIkZXRYbWFjYWRkciIgXSAmJiB3YW5fbWFjYWRkcj0kKG1hY2FkZHJfYWRkICIkZXRYbWFjYWRk
ciIgMSkKIAotIyBXb3JrYXJvdW5kIGZvciBkZXZpY2VzIHVzaW5nIGV0aDIgY29ubmVjdGVkIHRv
IChDUFUpIHN3aXRjaCBwb3J0IDgKLWNhc2UgIiRib2FyZCIgaW4KLWRsaW5rLGRpci04ODVsIHwg
XAotbmV0Z2VhcixyNzkwMCB8IFwKLW5ldGdlYXIscjgwMDAgfCBcCi1uZXRnZWFyLHI4NTAwKQot
CWlmbmFtZT1ldGgwCi0JdWNpZGVmX2FkZF9zd2l0Y2ggInN3aXRjaDAiIFwKLQkJIjA6bGFuIiAi
MTpsYW4iICIyOmxhbiIgIjM6bGFuIiAiNDp3YW4iICI1dEAkaWZuYW1lIgotCi0JIyBUaGVzZSBk
ZXZpY2VzIHNob3VsZCB1c2UgZXRoMiBzbyB0aGVpciBldGgwIGludGVyZmFjZSBvZnRlbiBoYXMg
bm8gTUFDCi0JIyBhc3NpZ25lZC4gTWFudWFsbHkgYXNzaWduIGV0aDIncyBNQUMgdG8gdGhlIExB
Ti4KLQlldDJtYWNhZGRyPSIkKG52cmFtIGdldCBldDJtYWNhZGRyKSIKLQlbIC1uICIkZXQybWFj
YWRkciIgXSAmJiB1Y2lkZWZfc2V0X2ludGVyZmFjZV9tYWNhZGRyICJsYW4iICIkZXQybWFjYWRk
ciIKLQlbIC1uICIkd2FuX21hY2FkZHIiIF0gJiYgdWNpZGVmX3NldF9pbnRlcmZhY2VfbWFjYWRk
ciAid2FuIiAiJHdhbl9tYWNhZGRyIgotCi0JYm9hcmRfY29uZmlnX2ZsdXNoCi0JZXhpdCAwCi0J
OzsKLWVzYWMKLQotIyBOVlJBTSBlbnRyaWVzIG1heSBjb250YWluIHVuc29ydGVkIHBvcnRzLCBl
LmcuIE5ldGdlYXIgUjYyNTAgdXNlcwotIyB2bGFuMXBvcnRzPTMgMiAxIDAgNSoKLSMgdmxhbjJw
b3J0cz00IDV1Ci0jIGFuZCBlYXJseSBOZXRnZWFyIFI4MDAwIHdhcyB1c2luZwotIyB2bGFuMXBv
cnRzPTMgMiAxIDAgNSA3IDgqCi12bGFuMXBvcnRzPSIkKGVjaG8gJChudnJhbSBnZXQgdmxhbjFw
b3J0cyB8IHRyICIgIiAiXG4iIHwgc29ydCkpIgotdmxhbjJwb3J0cz0iJChlY2hvICQobnZyYW0g
Z2V0IHZsYW4ycG9ydHMgfCB0ciAiICIgIlxuIiB8IHNvcnQpKSIKLWlmIGVjaG8gIiR2bGFuMXBv
cnRzIiB8IGVncmVwIC1xICJeMSAyIDMgNCA1IiAmJiBcCi0gICBlY2hvICIkdmxhbjJwb3J0cyIg
fCBlZ3JlcCAtcSAiXjAgNSI7IHRoZW4KLQl1Y2lkZWZfYWRkX3N3aXRjaCAic3dpdGNoMCIgXAot
CQkiMTpsYW4iICIyOmxhbiIgIjM6bGFuIiAiNDpsYW4iICIwOndhbiIgIjV0QCRpZm5hbWUiCi1l
bGlmIGVjaG8gIiR2bGFuMXBvcnRzIiB8IGVncmVwIC1xICJeMSAyIDMgNSA3IiAmJiBcCi0gICAg
IGVjaG8gIiR2bGFuMnBvcnRzIiB8IGVncmVwIC1xICJeMCA3IjsgdGhlbgotCXVjaWRlZl9hZGRf
c3dpdGNoICJzd2l0Y2gwIiBcCi0JCSIxOmxhbiIgIjI6bGFuIiAiMzpsYW4iICI1OmxhbiIgIjA6
d2FuIiAiN3RAJGlmbmFtZSIKLWVsaWYgZWNobyAiJHZsYW4xcG9ydHMiIHwgZWdyZXAgLXEgIl4w
IDEgMiAzIDUgNyA4IiAmJiBcCi0gICAgIGVjaG8gIiR2bGFuMnBvcnRzIiB8IGVncmVwIC1xICJe
NCA4IjsgdGhlbgotCXVjaWRlZl9hZGRfc3dpdGNoICJzd2l0Y2gwIiBcCi0JCSIwOmxhbiIgIjE6
bGFuIiAiMjpsYW4iICIzOmxhbiIgIjU6bGFuIiAiNzpsYW4iICI0OndhbiIgIjh0QCRpZm5hbWUi
Ci1lbHNlCi0JdWNpZGVmX2FkZF9zd2l0Y2ggInN3aXRjaDAiIFwKLQkJIjA6bGFuIiAiMTpsYW4i
ICIyOmxhbiIgIjM6bGFuIiAiNDp3YW4iICI1dEAkaWZuYW1lIgotZmkKLQogWyAtbiAiJHdhbl9t
YWNhZGRyIiBdICYmIHVjaWRlZl9zZXRfaW50ZXJmYWNlX21hY2FkZHIgIndhbiIgIiR3YW5fbWFj
YWRkciIKIAogYm9hcmRfY29uZmlnX2ZsdXNoCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
