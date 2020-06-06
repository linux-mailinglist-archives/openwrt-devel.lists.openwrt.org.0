Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCB11F0867
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 21:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ca1/k9dB7nIuZUSbWPuYn2DnYorbpMrlTHw+CftKlNY=; b=nwnvG+J4yZHytk
	lr6WTwHnn4qI8oR/8ZnCtqfAe5A97CzkV4cbl1906M1e1oRZEAb244mDL9KhVvBAUKPFMggAL0yFC
	CnwMiAaoSwFjreNihJy7l8ugUbnI1s6pExRcyPqRf+kRAEMrsOxOK5k1z4KbisBiB1RgvrISr0mo8
	6630qpnGWygLPn8UW1z1GmoI4VA1b9IgwfuoH2G/KfiXS3MIfFJqee6xqdcgxBw01aOdBURO+CePU
	C+VodK+poPEAuNmiDSqKnj4yoorVEPNnOtJnZ7MMT3eKZKYmn7StjqeAMjLTSO3kNzziV0Ddcx4E5
	twOWaHAFGYXQDWM6j+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhew3-0000nb-9F; Sat, 06 Jun 2020 19:56:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhevU-0000GW-Dg
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 19:56:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id u26so11429788wmn.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 12:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kz49Qm9/rHBGa8kI4pKKfi5BoUamGg+9r0NjHMb0qeA=;
 b=pPi/8jouuwuxXHWZqBToZ4S8mbTjNzIVu7lPQvfxJPmDwNXsld/J1It0xuOgh6OkH8
 WPd7GRNnjzO95UX0nOXIOwCxKjlytWDou0NuO3a0KQ+7DaTRK0TNGFVlkWF1px4Jun3w
 3N+1Hu07GFhq4+YN67w7JqZXKvY1xPxTNLwP8xyGSTLL/hHnnaKZRBS+pRYqpdIwPw4n
 /QjojHMzAMozoJHSboVSoZFmpShsqFaSliqOO3Mh1EckKb0auszYg+owrxK+uVzwAWSS
 EckQ2atzj+xg1WEeXuJ6GANBhdSyQ3AMkCMkv+kRFd/QDY7IW33Ayp7oqIBV/Qp+i6y7
 06TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kz49Qm9/rHBGa8kI4pKKfi5BoUamGg+9r0NjHMb0qeA=;
 b=G1WynO+JzeU6Fv3ESwuU3Iy0Owv2GCW2AUVTtShtonDmiJuCFSyY6Ip33O/zht3hA6
 NpSwFhqJB5dJnNNPBDrIMDROUf07zfEhCRRdHWNXeOcwTKJfT1ItSIzrz9SZ6u32NRTv
 hVFEvdhh4SiyDWPJPk00he7BFztTqk7Qr6XhEkjV6OACcoU44LmPaMM52bNA4gaefyUZ
 7Te0zahmfsoxhmXQSRh3CVUPRQfotwzRvnxxWz2F/gTyFpv5OprrSG3nJLUnMRNGiJEu
 iythZwRvfXwm4TCJxn/fDp8R8l5VHY/pJLdOUXuDhm0jbnWBF8uPHczvFlXwS43mh9mr
 WGhg==
X-Gm-Message-State: AOAM530v0hyF/Na9aLY/PFRrBsXaMT7mQJh9A6Ix5vJSLoKrW6MVbDq9
 B+NFDjE1GoE3SnUj1AoJTBr6oWHU
X-Google-Smtp-Source: ABdhPJypAOE1B4OC9/FNL9XL0SQlrNBkM/G7mU8RAwr2GUMCRpQiUs7KD3rkw/kWkkgRWxIcg6Tm4w==
X-Received: by 2002:a7b:ca47:: with SMTP id m7mr8382129wml.173.1591473375712; 
 Sat, 06 Jun 2020 12:56:15 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id
 b187sm17508107wmd.26.2020.06.06.12.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 12:56:15 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 06 Jun 2020 21:54:40 +0200
Message-ID: <4786077.zvRQnm3vzE@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_125620_458816_D1DC709C 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/4 v4] bcm63xx: image: don't add the CFE to
 the sercomm factory
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

VGhlcmUgaXMgbm8gbmVlZCB0byBpbmNsdWRlIHRoZSBDRkUgYm9vdGxvYWRlciBpbiB0aGUgU2Vy
Y29tbSBmYWN0b3J5CmltYWdlcy4KClRoZXJlIG1pZ2h0IGJlIGEgY2FzZSB3aGVuIHRoaXMgY291
bGQgYmUgdXNlZnVsOgogIC0gV2UgYXJlIHJ1bm5pbmcgdGhlIHN0b2NrIGZpcm13YXJlIG9uIHRo
ZSBmaXJzdCBTZXJjb21tIGltYWdlCiAgLSBUaGUgc2Vjb25kIHBhcnRpdGlvbiBzdG9yaW5nIHRo
ZSBib3Rsb2FkZXIgd2FzIGVyYXNlZCAodW5saWtlbHkpCkV2ZW4gaW4gdGhpcyBjYXNlIGZsYXNo
aW5nIGFuIGltYWdlIHdpdGhvdXQgYSBib290bGFkZXIgaXMgaGFybWxlc3MuCgpEb24ndCBpbmNs
dWRlIHRoZSBib290bG9hZGVyIGluIHRoZSBmYWN0b3J5IGltYWdlIGNyZWF0aW9uIGFuZCByaWQg
b2YgdGhlCnJpc2sgb2YgZmxhc2hpbmcgZmFjdG9yeSBpbWFnZXMgd2l0aCBhbiB1bnRlc3RlZCBi
b290bG9hZGVyIHBhcnRpdGlvbi4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb256w6FsZXogQ2Fi
YW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6IHJlZnJlc2gKQ2hh
bmdlcyBpbiB2Mzogbm9uZQpDaGFuZ2VzIGluIHY0OiBub25lCgogdGFyZ2V0L2xpbnV4L2JjbTYz
eHgvaW1hZ2UvTWFrZWZpbGUgfCAxMiAtLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtl
ZmlsZSBiL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCmluZGV4IDA1OTNkYWNi
NDQuLjVlYzMxZjYyMDcgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01h
a2VmaWxlCisrKyBiL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCkBAIC0yMTgs
MjAgKzIxOCw4IEBAIGRlZmluZSBCdWlsZC9jZmUtc2VyY29tbS1wYXJ0CiAJCS0tcGFydC1uYW1l
IHJvb3Rmc19saWIgXAogCQktLXBhcnQtdmVyc2lvbiAkKFNFUkNPTU1fVkVSU0lPTikKIAotCXJt
IC1yZiAkQC1ib290bG9hZGVyCi0JbWtkaXIgLXAgJEAtYm9vdGxvYWRlcgotCWNwICQoS0RJUikv
YmNtNjN4eC1jZmUvJChDRkVfUkFNX0ZJTEUpICRALWJvb3Rsb2FkZXIvJChDRkVfUkFNX0pGRlMy
X05BTUUpCi0JJChjYWxsIEJ1aWxkL2NmZS1qZmZzMiwkQC1ib290bG9hZGVyKQotCSQoY2FsbCBC
dWlsZC9wYWQtdG8sJChCTE9DS1NJWkUpKQotCSQoVE9QRElSKS9zY3JpcHRzL3NlcmNvbW0tcGFy
dGl0aW9uLXRhZy5weSBcCi0JCS0taW5wdXQtZmlsZSAkQCBcCi0JCS0tb3V0cHV0LWZpbGUgJEAu
Ym9vdGxvYWRlciBcCi0JCS0tcGFydC1uYW1lIGJvb3Rsb2FkZXIgXAotCQktLXBhcnQtdmVyc2lv
biAkKFNFUkNPTU1fVkVSU0lPTikKLQogCW12ICRALmtlcm5lbF9yb290ZnMgJEAKIAlkZCBpZj0k
QC5yb290ZnNfbGliID4+ICRACi0JZGQgaWY9JEAuYm9vdGxvYWRlciA+PiAkQAogZW5kZWYKIAog
ZGVmaW5lIEJ1aWxkL2NmZS1zZXJjb21tLWxvYWQKLS0gCjIuMjcuMAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
