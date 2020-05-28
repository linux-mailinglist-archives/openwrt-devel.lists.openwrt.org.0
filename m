Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5FE1E695E
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 20:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1moPr0z4PukCa24w6tgCsidYfEPXnwxkyg1r3mxZLV0=; b=pdEhQZhK3C99qw
	vjXrLqLlEt/orZ02IKR29IVUI+wi3YH9FeuEA8Crp+r9NihnY5F8ZLTvGhy3OTL60kk56UJpBpZE3
	o9MpIt58TtXzGahupfrfV7O387L3AHE1G3ea83ixniNtWVjjn6Dy/cv2ztE8Z4gwXzv2L0lfuEBUc
	Z7ZyR1dAIoGPjWO75nr0g7Zwjeb5zymGbUC7W1lQ1IrtpFT0YsHjAIavmMB6zdzP/9hD9lU32fyJo
	fm24L8UxYBGD//w3V//8gDwBB2TGp6xIHMJCKKO1QbH10XHp7TtD7XIFrNWmEGw5gH7zWwPlBhyc4
	7i3q7AHAvSQRf+CVeSKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNKD-00048A-4M; Thu, 28 May 2020 18:32:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNK8-00047e-8N
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 18:32:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id k26so4589866wmi.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 May 2020 11:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=673DIcRzP2TSSqsdDlFdOhGGWvM04D0kskOtXDZK2iY=;
 b=IDyXT0ZKCZz25+2bsyemdIkigeIuqUABIyp8fEUtM8IGsxUDk3HoUCttqBUDPDVAKy
 heyttTci0p5QzK9S8JbvQNNYpkZIur5B+rnx9wOJatk/6oJgnCKFQFuW6w9q+ZMAXZmm
 vUKpRnLe5cuCAY++3uj9H7vf1G39WunT3kY68nP/RRkLkIgLaNUT8UUVjeMzJ2vFG5Dy
 U7+IDNtRunqh9J8vlvEw3qx14Y5UHewU3X1uOwaFuMEo4fgVi1hkHjBvuCKjTKlTzo0d
 K1einMOP97mMHaNwldlcgFhtYoqu5utq+QrSSOnNT7nL5zPeODclLGHGHlLAr1nu9CWG
 UFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=673DIcRzP2TSSqsdDlFdOhGGWvM04D0kskOtXDZK2iY=;
 b=oiP0yNWKmHjK5T3rJYxUaMNRzbDpdZJLxzfoVOPG/bG0DCNH/4zRJ4Ngnn1J7Hf+Gn
 bAPZaYMOsQOM9sLyQoIJmirfrKgHeeLwYKefYllnG2mnH4Yz+BzsSxkh/5x9fuBj/Sv6
 cPr8ypzCMkZTm0v21BeTiEmK9xab6QoK7c0Q9UU9NQd/LplexZ3XxfHhcePtRY4tSvMZ
 Z3PklF8sgv120YMCpCUAcW3XI00Lje1NSFyZDN2m0FPySexQC9RCCSwmDgNx8uE9eh8y
 zVqjRaJA75kyzt5wEiKAjuUzGxystrIujxWU1cVTf8vKBVn7LHdjsAXs2g1o2/3jB2Mf
 fwbw==
X-Gm-Message-State: AOAM533g3eBTrI3DoyEGcu/xYBfAZ31fwZXsBXqGKcljYw21O0gBpi/X
 G2aFsMWOUffmueWvRsr49fGcrKRP
X-Google-Smtp-Source: ABdhPJyC9km+3/ge2C/ecgL0td7zbdWHMAKrtBnzAn9gWnbRnY4wxJ8+4KLI0Z0G/rt5LJQ966BfGQ==
X-Received: by 2002:a05:600c:146:: with SMTP id
 w6mr4459347wmm.97.1590690728428; 
 Thu, 28 May 2020 11:32:08 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id z22sm7044195wmf.9.2020.05.28.11.32.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 11:32:05 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 20:29:14 +0200
Message-ID: <3894732.7V3RtbdnC8@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_113212_299692_D25DBE48 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: AD1018: generate a factory image
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

Q3VycmVudGx5IHRoZXJlIGlzIG5vIGltYWdlIHRoYXQgY2FuIGJlIGZsYXNoZWQgd2l0aG91dCBv
cGVuaW5nIHRoZSBjYXNlCmFuZCBhY2Nlc3NpbmcgdGhlIHNlcmlhbCBwb3J0IG9uIHRoZSBTZXJj
b21tIEFEMTAxOCByb3V0ZXIuCgpXZSBjYW4gdXNlIGFuIHVuZW5jcnlwdGVkIGZhY3RvcnkgaW1h
Z2UgdG8gZmxhc2ggT3BlbndydCB0aHJvdWdoIHRoZQpzdG9jayBmaXJtd2FyZS4gVGhlIHJvdXRl
ciBjb21lcyB3aXRoIDIgc3RvY2sgZmlybXdhcmVzLCB3ZSBtdXN0IHBlcmZvcm0KdGhlIGZsYXNo
IG9wZXJhdGlvbiBmcm9tIHRoZSAybmQgb25lLgoKMXN0IG9wdGlvbjogdXNpbmcgdGhlIGZhY3Rv
cnkgYnVzeWJveCBDTEk6CiAgLSBib290IHRoZSBzZWNvbmQgZmlybXdhcmUKICAgICAgZmxhc2hf
ZXJhc2VhbGwgL2Rldi9tdGQ4CiAgICAgIGZsYXNoX2VyYXNlYWxsIC9kZXYvbXRkOQogICAgICBl
Y2hvIC1uICJlUmNPbU0uMDAwIiB8IGRkIG9mPS9kZXYvbXRkYmxvY2s4CiAgICAgIGVjaG8gLW4g
ImVSY09tTS4wMDEiIHwgZGQgb2Y9L2Rldi9tdGRibG9jazkKICAgICAgcmVib290CiAtIGZsYXNo
IHRoZSBPcGVud3J0IGZhY3RvcnkgaW1hZ2UKICAgICAgZmxhc2hfZXJhc2VhbGwgLWogL2Rldi9t
dGQ2CiAgICAgIGRkIGlmPW9wZW53cnQtZmFjdG9yeS5iaW4gb2Y9L2Rldi9tdGRibG9jazYKIC0g
Ym9vdCB0aGUgZmlyc3QgZmlybXdhcmUKICAgICAgZmxhc2hfZXJhc2VhbGwgL2Rldi9tdGQ4CiAg
ICAgIGVjaG8gLW4gImVSY09tTS4wMDIiIHwgZGQgb2Y9L2Rldi9tdGRibG9jazgKICAgICAgcmVi
b290CgoybmQgb3B0aW9uOiB1c2luZyB0aGUgZmFjdG9yeSB3ZWIgVUkKICAtIHdpdGggc2VyY29t
bSBtYWtlX2ltZyBwcm9wcmlldGFyeSB1dGlsaXR5IGFuZCB0aGUgb3BlbndydC1mYWN0b3J5LmJp
bgogICAgYXMgdGhlIGlucHV0LCBnZW5lcmF0ZSB0aGUgb3BlbndydC1mYWN0b3J5LmltZyBlbmNy
eXB0ZWQgaW1hZ2UKICAtIGJvb3QgdGhlIHNlY29uZCBmaXJtd2FyZQogICAgICBmbGFzaF9lcmFz
ZWFsbCAvZGV2L210ZDgKICAgICAgZmxhc2hfZXJhc2VhbGwgL2Rldi9tdGQ5CiAgICAgIGVjaG8g
LW4gImVSY09tTS4wMDAiIHwgZGQgb2Y9L2Rldi9tdGRibG9jazgKICAgICAgZWNobyAtbiAiZVJj
T21NLjAwMSIgfCBkZCBvZj0vZGV2L210ZGJsb2NrOQogICAgICByZWJvb3QKICAtIGZsYXNoIHRo
ZSBvcGVud3J0LWZhY3RvcnkuaW1nIGltYWdlIHVzaW5nIHRoZSBmYWN0b3J5IHdlYiBVSQoKU2ln
bmVkLW9mZi1ieTogRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwuY29t
PgotLS0KIHRhcmdldC9saW51eC9iY202M3h4L2ltYWdlL2JjbTYzeHhfbmFuZC5tayB8IDIgKysK
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90YXJnZXQvbGlu
dXgvYmNtNjN4eC9pbWFnZS9iY202M3h4X25hbmQubWsgYi90YXJnZXQvbGludXgvYmNtNjN4eC9p
bWFnZS9iY202M3h4X25hbmQubWsKaW5kZXggNTQ4M2M3MzA3Ny4uNTEwYTZmMjZjOCAxMDA2NDQK
LS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvYmNtNjN4eF9uYW5kLm1rCisrKyBiL3Rh
cmdldC9saW51eC9iY202M3h4L2ltYWdlL2JjbTYzeHhfbmFuZC5tawpAQCAtMTEzLDYgKzExMyw4
IEBAIFRBUkdFVF9ERVZJQ0VTICs9IG5ldGdlYXJfZGduZDM3MDAtdjIKICMjIyBTZXJjb21tICMj
IwogZGVmaW5lIERldmljZS9zZXJjb21tX2FkMTAxOAogICAkKERldmljZS9iY202M3h4LW5hbmQp
CisgIElNQUdFUyArPSBmYWN0b3J5LmJpbgorICBJTUFHRS9mYWN0b3J5LmJpbiA6PSBhcHBlbmQt
a2VybmVsIHwgcGFkLXRvICQkJCQoS0VSTkVMX1NJWkUpIHwgYXBwZW5kLXViaQogICBJTUFHRS9j
ZmUuYmluIDo9IGFwcGVuZC1rZXJuZWwgfCBwYWQtdG8gJCQkJChLRVJORUxfU0laRSkgfCBhZDEw
MTgtamZmczItY2ZlcmFtIHwgYXBwZW5kLXViaSB8IGNmZS13ZmktdGFnCiAgIERFVklDRV9WRU5E
T1IgOj0gU2VyY29tbQogICBERVZJQ0VfTU9ERUwgOj0gQUQxMDE4Ci0tIAoyLjI2LjIKCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
