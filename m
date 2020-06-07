Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB61F0A90
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 10:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6guKRokt38Hde1GjMum9/q3BKBaXnC14iKJ6s84nnrk=; b=HqrtkK0cqAbIQU
	8rF0T3GlDYw3gnXn/17ozav/cT2zPazqo7ckSoe9LZdSAWw+kooSbERPengl7bIUBuLJvhiwcM7hx
	zyyWdCoQiPjV1Ebftn9JGPRwAW7QFXhSzyKCRkV9jUvQn1sbbMTYrubCho2u7E37T+6ey6NvPaJVZ
	KbhZZXNo68nYxAY/djU2Z77ORkthYDQcLMBArWJp4MsP4WQoyQLMRtCI4dbCt5EqQsXKAPNUxNdqU
	R4J0nNn7+dujdcVQ99qibTxYmj00+j1iNtWGio/Shlfp6k4Co0OfOXY2HfjhFBChIURK9hkrTyds3
	IvPrRFdp37igMD/nrEug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhr84-0002qB-Gr; Sun, 07 Jun 2020 08:58:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhr7f-0002hD-HW
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 08:57:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id u13so12405124wml.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 07 Jun 2020 01:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sFYNdjk81q1eDywHWhtkZZGx1LudpP+kDITE/dD+o8k=;
 b=GYnZLLxkhOXJhw0NOoStFF5wUcmJ0oCLDiF8nZE1cZXvwsjbJxnu/FAenGVbAcJjtS
 yLyz4uoGp0toN4phP9yxBRW9iVOeipozUuVBw+zCXGlGmLpVUFFbk9t0DsIey7PtlaUu
 Xaxl+bSews/GX3CADhgSl8rKIfGnQwf71WWvJm6BXkCmjmGGTvl5sfgxRJZjcVLs+8Tq
 s/N7Ug1cQhVIUIJeJuX1WX44fHW+OasMFNS2VvC0YZHg06Z5PA/lLm6ScLloAlGQGlU+
 Tc/wbPTq9lEpWTdOfsuNuinuA5SouyPlz7lX9ar4CeNCy6mRTOwqjfUWLbIRiPhx5Knj
 ILUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sFYNdjk81q1eDywHWhtkZZGx1LudpP+kDITE/dD+o8k=;
 b=hqrSZs68QuibRlScLYVvR9sfOMjs3h+39AvL/D+ge1az3FTIWHgpyvf9XV2Hcz+RyA
 datY9SVSSjY8IWaj/63gsF4+33bcywPwYn5nU6WG1I9jwhXuT+YKNLfWCwfB26TpsulC
 LCyYKhewVw0YU5FMWW3mMM65LB8dXqUeyleq6DICmUVD4WiVNnTyKOg65y1pjpVd4mAZ
 vaAFh/hIKrAAHUSumnq0XDSg6JdKftVpnArZM+ZZCU/ShfWwNT4iAbSo+RxlZF9ag4fI
 KtREpgPpFQR9WVNXA+lKaaKByQyzCoBb+zEIVGuawnuTrlWUY2wz5bySf4aaq5r+p1pw
 UyRQ==
X-Gm-Message-State: AOAM531hmKY5UKTP2qBV6CrCcq1mpWckvPsefie5Rvd1ZGaQIzkHWUgP
 CUowHiIh3jcGJq21UIDkUjFmSCEiDyU=
X-Google-Smtp-Source: ABdhPJzhpL6jFfy8aYQXy8AasTC2G8rN1BBtyNXz9eUyrA1YysWBbKt1wW1H/Tri9kl/9kyN6Bx5nA==
X-Received: by 2002:a1c:2082:: with SMTP id g124mr11394835wmg.21.1591520261773; 
 Sun, 07 Jun 2020 01:57:41 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id o15sm19650147wrv.48.2020.06.07.01.57.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 01:57:41 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 07 Jun 2020 10:55:53 +0200
Message-ID: <2122563.2mDR7D8BXx@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_015743_573214_2D0A2CBC 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/4 v5] bcm63xx: image: allow to pass the
 addr to the NAND kernel header
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
KSwgdGhlcmVmb3JlCndlJ2xsIG5lZWQgdG8gcGFzcyBhIGRpZmZlcmVudCBhZGRyZXNzIGFuZCBu
b3QgdGhlIExPQURFUl9FTlRSWS4KCkxldCB0byBwYXNzIHRoZSBhZGRyIHRvIHRoZSBpbWFnZSBj
cmVhdGlvbiB3aGVuIG5lY2Nlc3NhcnkuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29uesOhbGV6
IENhYmFuZWxhcyA8ZGdjYnVldUBnbWFpbC5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOiByZWZyZXNo
CkNoYW5nZXMgaW4gdjM6IG5vbmUKQ2hhbmdlcyBpbiB2NDogbm9uZQpDaGFuZ2VzIGluIHY1OiBu
b25lCgogdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUgfCA0ICsrLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
dGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUgYi90YXJnZXQvbGludXgvYmNtNjN4
eC9pbWFnZS9NYWtlZmlsZQppbmRleCBjOTYyZTUzMWE5Li4wNTkzZGFjYjQ0IDEwMDY0NAotLS0g
YS90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmlsZQorKysgYi90YXJnZXQvbGludXgv
YmNtNjN4eC9pbWFnZS9NYWtlZmlsZQpAQCAtMTcyLDggKzE3Miw4IEBAIGRlZmluZSBCdWlsZC9j
ZmUtamZmczIta2VybmVsCiAJJChUT1BESVIpL3NjcmlwdHMvY2ZlLWJpbi1oZWFkZXIucHkgXAog
CQktLWlucHV0LWZpbGUgJEAgXAogCQktLW91dHB1dC1maWxlICRALWtlcm5lbC92bWxpbnV4Lmx6
IFwKLQkJLS1sb2FkLWFkZHIgJChMT0FERVJfRU5UUlkpIFwKLQkJLS1lbnRyeS1hZGRyICQoTE9B
REVSX0VOVFJZKQorCQktLWxvYWQtYWRkciAkKGlmICQoMSksJCgxKSwkKExPQURFUl9FTlRSWSkp
IFwKKwkJLS1lbnRyeS1hZGRyICQoaWYgJCgxKSwkKDEpLCQoTE9BREVSX0VOVFJZKSkKIAogCSMg
VGhlIEpGRlMyIHBhcnRpdGlvbiBjcmVhdGlvbiBzaG91bGQgcmVzdWx0IGluIHRoZSBmb2xsb3dp
bmcKIAkjIGxheW91dDoKLS0gCjIuMjcuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
