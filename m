Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E9A12B357
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 09:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xtHPrg7IIpexUww6cdsC9Vqpq13G6KjOnbR/QxoZkDQ=; b=kaS17UcDS5gVvC
	w8qBUn5uNHs7aZzq69rrCYmj7DYsp5dyPYKysVAg5vSPenGlg8QQqF/7lMwCaEaAmS27ZD+N1GtOa
	r2VvaH0RCYT0XBwmN82Dv4o9vEhej9Ma/pjbYPEPPThBIYNs1ifT6qPJKcYfNsxMHSTTzfeecxPD0
	zlxw7b8W9WKgEsoSjcaxaqcHI20ER7/WwSqZUPawR2yZRfw2lSoDonE/SFveJBDsiTumqzwA0JfDy
	fMT5OJXkS9gL4+6rPa7YDKei1toiaLEDWJLJdLXgszz9nRK5++7UD2415JawLd+tU838l2ta9/yLM
	OfIn52d37LTSqtMVEzZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iklNe-0000UW-NR; Fri, 27 Dec 2019 08:53:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iklNX-0000U4-SO
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 08:53:53 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so26555577ljm.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Dec 2019 00:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IG3hSkWmoRf9HipwTYqQe/KKktAY9WJrgDDwcwJS0wM=;
 b=ZnVtXBC5KShspxQhtAM2AzFe8dvxnlqVtQhveJZCzMQwj013aEFp9O7aaA3S9EEQDu
 wI737BwROHPkRnOZqw+hcie8j99ltmUj5LUJOyAW37gRDiTJOBnYGpe7y9/b+yZsSzQM
 NqGwafK2yLVXDz1no/rr7zh7sOou+IThHcMEOlhXJLnIV8Gqb+17PA/xX3i1BhIePG4R
 d3bP1/Ii8MVjPcGsD5K1Txltz9OPaGx28sgu0vmuPi+XNQoRESGQcr3fdcBhr5r8ULGi
 gs5ruYOH1Srr2UZmNjI8quIn9auULVkkdZcZWiybQvQzziuvCkUSex/EdE8UR5aOuBKl
 CJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IG3hSkWmoRf9HipwTYqQe/KKktAY9WJrgDDwcwJS0wM=;
 b=DPy82v4Rh82cQ4K+WS1qUagdxZVKe9uFpIMoEOfJD1J1bcm2syat61wz9d7jaylVTQ
 EsHLQiWAh4HNcB3+T7SVaB1MeN9XFetHgV/9ODSIANXjVd80ALInCkVyMc4/jjkhjpLd
 TctuY4xWui2XCK3bkv62NVuOAlCbN4baCq48NZeXsPU/z6qGt7gqTKlCX3cG5e/uZune
 mBlsxtyxbVK5F/MC1PZMb0n//zZu3oDMS7RadzMjSHP0V+DXxx3lAsbFuHVSVke3vIY3
 EgzqXEpr6v0sBBgIsQNnE9BKRYS6ZdaETZBYU3ENslcc8MVOa82QG1aceR9MClfnsx+u
 1uWw==
X-Gm-Message-State: APjAAAU/NqFOEp83thek4o7W56FTUpcJ5tURTJU9SbVK0/06MshxsNxe
 yUUH6HA1ygk0vT308khp+JkZm8ky
X-Google-Smtp-Source: APXvYqz1r8M1zUguCaPZefq4hrdkrhIR8/dZsKh1S65BrG605dcmjjNNJI4l/PvxwtzxcxdRAPeegg==
X-Received: by 2002:a05:651c:2c7:: with SMTP id
 f7mr14065855ljo.125.1577436827810; 
 Fri, 27 Dec 2019 00:53:47 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id u25sm14308266lfk.46.2019.12.27.00.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Dec 2019 00:53:47 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Dec 2019 09:53:35 +0100
Message-Id: <20191227085335.10144-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_005351_945813_7F5C45BB 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Subject: [OpenWrt-Devel] [PATCH fstools] Revert "block: mount_action: handle
 mount/umount deps"
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
dHlwZQphbmQgdGhlbiBhIG5hbWUpIGJ1dCBub3RoaW5nIG1vcmUuIEluIHBhcnRpY3VsYXIgaXQn
cyBub3QgZ3VhcmFudGVlZAooYW5kIGl0J3MgYWN0dWFsbHkgcXVpdGUgdW5jb21tb24pIHRoYXQg
YWxsIHByZWNlZGluZyBlbnRyaWVzIGFyZSBwYXJlbnQKZGV2aWNlcy4KCk1vdW50aW5nIGFsbCBw
cmVjZWRpbmcgZGV2aWNlcyBtYXkgZWFzaWx5IHJlc3VsdCBpbiB1bnJlbGF0ZWQgbW91bnRzLgpU
aGV5IGNhbiBmYWlsIGVhc2lseSBiYXNpY2FsbHkgYnJlYWtpbmcgb3JpZ2luYWwgbW91bnRpbmcg
YXR0ZW1wdCwgZS5nLjoKCmRhZW1vbi5lcnIgYmxvY2tkOiBrZXJuZWwgaXMgcmVxdWVzdGluZyBh
IG1vdW50IC0+IHNkYTIKZGFlbW9uLmVyciBibG9jazogL2Rldi9zZGExIGlzIGFscmVhZHkgbW91
bnRlZCBvbiAvdG1wL3J1bi9ibG9ja2Qvc2RhMQpkYWVtb24uZXJyIGJsb2NrOiBhdXRvZnM6ICJh
ZGQiIGFjdGlvbiBoYXMgZmFpbGVkOiAtMQpkYWVtb24uZXJyIGJsb2NrZDogZmFpbGVkIHRvIHJ1
biBibG9jay4gYWRkL3NkYTIKCklmIHNvbWUgZGVwZW5kZW5jeSBoYW5kbGluZyBpcyByZXF1aXJl
ZCBpdCBzaG91bGQgYmUgaW1wbGVtZW50ZWQKZXhwbGljaXRseSBhcyBjdXJyZW50IHNvbHV0aW9u
IGlzbid0IHJlbGlhYmxlIGFuZCBpdCBicmVha3MgYXV0b2ZzIHdoZW4KdXNpbmcgbXVsdGlwbGUg
ZGV2aWNlcyAocGFydGl0aW9ucykuCgpDYzogWW91c29uZyBaaG91IDx5c3pob3U0dGVjaEBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4K
LS0tCiBibG9jay5jIHwgNDMgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2Jsb2NrLmMgYi9ibG9jay5jCmluZGV4IGI2ZDQ5YTguLmUwN2NiYzUgMTAw
NjQ0Ci0tLSBhL2Jsb2NrLmMKKysrIGIvYmxvY2suYwpAQCAtMTE5OSw0NyArMTE5OSwzMCBAQCBz
dGF0aWMgaW50IHVtb3VudF9kZXZpY2UoY2hhciAqcGF0aCwgaW50IHR5cGUsIGJvb2wgYWxsKQog
CiBzdGF0aWMgaW50IG1vdW50X2FjdGlvbihjaGFyICphY3Rpb24sIGNoYXIgKmRldmljZSwgaW50
IHR5cGUpCiB7Ci0Jc3RydWN0IGRldmljZSAqdGhlX2RldiwgKmRldjsKIAljaGFyIHBhdGhbMzJd
OwogCiAJaWYgKCFhY3Rpb24gfHwgIWRldmljZSkKIAkJcmV0dXJuIC0xOwotCi0JaWYgKGNvbmZp
Z19sb2FkKE5VTEwpKQotCQlyZXR1cm4gLTE7Ci0JY2FjaGVfbG9hZCgwKTsKLQotCXRoZV9kZXYg
PSBmaW5kX2Jsb2NrX2RldmljZShOVUxMLCBOVUxMLCBkZXZpY2UpOworCXNucHJpbnRmKHBhdGgs
IHNpemVvZihwYXRoKSwgIi9kZXYvJXMiLCBkZXZpY2UpOwogCiAJaWYgKCFzdHJjbXAoYWN0aW9u
LCAicmVtb3ZlIikpIHsKIAkJaWYgKHR5cGUgPT0gVFlQRV9IT1RQTFVHKQogCQkJYmxvY2tkX25v
dGlmeShkZXZpY2UsIE5VTEwsIE5VTEwpOwogCi0JCWlmICghdGhlX2RldiB8fCAhdGhlX2Rldi0+
bSB8fCB0aGVfZGV2LT5tLT50eXBlICE9IFRZUEVfTU9VTlQpIHsKLQkJCXNucHJpbnRmKHBhdGgs
IHNpemVvZihwYXRoKSwgIi9kZXYvJXMiLCBkZXZpY2UpOwotCQkJdW1vdW50X2RldmljZShwYXRo
LCB0eXBlLCB0cnVlKTsKLQkJfSBlbHNlCi0JCQl2bGlzdF9mb3JfZWxlbWVudF90b19sYXN0X3Jl
dmVyc2UoJmRldmljZXMsIHRoZV9kZXYsIGRldiwgbm9kZSkKLQkJCQlpZiAoZGV2LT5tICYmIGRl
di0+bS0+dHlwZSA9PSBUWVBFX01PVU5UKQotCQkJCQl1bW91bnRfZGV2aWNlKGRldi0+cHItPmRl
diwgdHlwZSwgdHJ1ZSk7CisJCXVtb3VudF9kZXZpY2UocGF0aCwgdHlwZSwgdHJ1ZSk7CisKIAkJ
cmV0dXJuIDA7Ci0JfSBlbHNlIGlmICghc3RyY21wKGFjdGlvbiwgImFkZCIpKSB7Ci0JCWlmICgh
dGhlX2RldikKLQkJCXJldHVybiAtMTsKLQkJaWYgKHRoZV9kZXYtPm0gJiYgdGhlX2Rldi0+bS0+
dHlwZSA9PSBUWVBFX01PVU5UKSB7Ci0JCQl2bGlzdF9mb3JfZmlyc3RfdG9fZWxlbWVudCgmZGV2
aWNlcywgdGhlX2RldiwgZGV2LCBub2RlKSB7Ci0JCQkJaWYgKGRldi0+bSAmJiBkZXYtPm0tPnR5
cGUgPT0gVFlQRV9NT1VOVCkgewotCQkJCQlpbnQgZXJyID0gbW91bnRfZGV2aWNlKGRldiwgdHlw
ZSk7Ci0JCQkJCWlmIChlcnIpCi0JCQkJCQlyZXR1cm4gZXJyOwotCQkJCX0KLQkJCX0KLQkJCXJl
dHVybiAwOwotCQl9IGVsc2UKLQkJCXJldHVybiBtb3VudF9kZXZpY2UodGhlX2RldiwgdHlwZSk7
CisJfSBlbHNlIGlmIChzdHJjbXAoYWN0aW9uLCAiYWRkIikpIHsKKwkJVUxPR19FUlIoIlVua293
biBhY3Rpb24gJXNcbiIsIGFjdGlvbik7CisKKwkJcmV0dXJuIC0xOwogCX0KLQlVTE9HX0VSUigi
VW5rb3duIGFjdGlvbiAlc1xuIiwgYWN0aW9uKTsKLQlyZXR1cm4gLTE7CisKKwlpZiAoY29uZmln
X2xvYWQoTlVMTCkpCisJCXJldHVybiAtMTsKKwljYWNoZV9sb2FkKDApOworCisJcmV0dXJuIG1v
dW50X2RldmljZShmaW5kX2Jsb2NrX2RldmljZShOVUxMLCBOVUxMLCBwYXRoKSwgdHlwZSk7CiB9
CiAKIHN0YXRpYyBpbnQgbWFpbl9ob3RwbHVnKGludCBhcmdjLCBjaGFyICoqYXJndikKLS0gCjIu
MjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
