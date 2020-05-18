Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 255461D74C5
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 12:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xzbcApxTE4La3gQKZg6QCEUjZN/WQhJQKyepNmQZBuo=; b=RKiYfwtrlck40c
	pmbSEmOCidoO/EE7ug/ifAvL63b34quWBE3Oc9urc9lNf9AqDYwtV2K3/vuKdTLMnd8Rp7gEQ58V/
	22n0KqN0TwTH6t9Y24ILNKl/Oe2XVN5SgXbTYdlzigsZJzcljTHg7iTkly3ImWus2VUdNfFTF3CQ+
	7IuWG4yGOsfoYwoeDh66+gWachcNQw64/oH3Pb/OB76XJz1wSo4XqRNDZ5aFMgTpRKv+a5gNlZ0bv
	ME1ME90YckK6S2hHhm8eH8m6uVHRox0jxghg1eAL2vcBpRCY+wjxMk4LB7J8TScVGENdbxDh4PTA8
	eKCApzTGjS/orLzh3SiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaciV-0002zI-AZ; Mon, 18 May 2020 10:09:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaciP-0002yW-5w
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 10:09:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id k12so8670591wmj.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 03:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qZyA04xs3maSOHGPbOUB/EyBjv5Nqos2weLZOqRYWpE=;
 b=FGZFCO6dk0BhlnDTo1WPgrJzTqYrBzxlfRDmfPKDonI94iOf25kd0+XTVIFAjiZZ9m
 bqaOSlSHZByu3Ydha2/48uP1+DoLyxmu2D5vxNCeCLg7b40KXYwYvrZsQKoBf1z7VsX4
 y9hH+Gzp2cSGJyC3CpI0teUveGWaBJhb+e7OB+aqqXHGu4Czg+P1Qthuk/I55mbFn/iy
 zscFUGRgaXTMcMdAUO5DYV4DvaQwKGXVE5/4Bom2fHRz9mgWviCtVJS8Jxhyt1HiI6AV
 tUyMtZ1NG8s/4nK9lRrE1I4sjAY8W7humSJpPnE00ojpiUHKhqHiF768Rj4/rgDBEKH3
 /+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qZyA04xs3maSOHGPbOUB/EyBjv5Nqos2weLZOqRYWpE=;
 b=hCYqRW6NkZwz2q9rEyzVApD4sEkMoxLdJc9tYIanpUxhPJtQx/tmi/CMS7RLV+RhvS
 wXKCz7o0lJjb5ItUYV5W7Zdk95+wzDNQ/5a8cImKd9eGIV8ahkfnsHZArDuZQpmp6kjZ
 vtjk2krPi3gcDkABKyeIodtOp00N80fIdFlBKtkAWBqSv9e7ca04HSYJMhH6zOA93jO4
 rkT1n1MA/htK+GyNXCwimmOzKbr/xIT9pSbo/BeoNbQxYqT97VZqAs6EVpvtY7nCXSOt
 CHSsDN5RhKIK3+Yg0mBIOJE087A9p7kV/rBJZX9v83sdldVJu/umHXDuqcgOdFDEkHzE
 4LhQ==
X-Gm-Message-State: AOAM532q6ssPi2SKJ/ctVE9ytAmYnKZKpoCHYxbluN8CwwvD1Hx6lSet
 uMEdnDJoBkWrm6OSmiKDq9zpkobaevI=
X-Google-Smtp-Source: ABdhPJweTTdYU8+gLyy4KqsUHnLgYTUfHvhRf1lcV15ssFqcqvicxHGuuYoAfFOuS8pzCGB2LmOxEg==
X-Received: by 2002:a1c:9948:: with SMTP id b69mr17966688wme.44.1589796579131; 
 Mon, 18 May 2020 03:09:39 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id l12sm17252149wrh.20.2020.05.18.03.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 03:09:38 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 18 May 2020 12:09:11 +0200
Message-ID: <3691817.DDnkgvyxxj@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_030945_240645_4FBA23E2 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: pinctrl: fix BCM6348 group0
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
Cc: noltari@gmail.com, jonas.gorski@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIHBpbmN0cmwgZ3JvdXAwIG93bnMgcGlucyBuZXZlciB1c2VkIChhdCBsZWFzdCBpbiBPcGVu
d3J0KSBmb3IgYW55CnBpbm11eC4KCkJhc2VkIG9uIHRoZSBpbmZvIGZyb20gdGhlIHdpa2kgZm9y
IHRoZSBCQ002MzQ4IFNvYywgdGhpcyBncm91cCBvbmx5IHVzZXMKdGhlIHBpbiAzMiBuZWVkZWQg
Zm9yIE1JSSBNREM6Cmh0dHBzOi8vb3BlbndydC5vcmcvZG9jcy90ZWNocmVmL2hhcmR3YXJlL3Nv
Yy9zb2MuYnJvYWRjb20uYmNtNjN4eC9waW5tdXgKClBpbnMgMzMsIDM0LCAzNSBhbmQgMzYgYXJl
IHVzdWFsbHkgdGFrZW4gZm9yIEdQSU8gYnV0dG9ucyB1c2UuIFRoaXMgaXMKY2F1c2luZyBhbiBl
cnJvciB3aGljaCBsZWFkcyB0byBub24gd29ya2luZyBidXR0b25zOgpbICAgIDQuNzM1OTI4XSBn
cGlvLWtleXMtcG9sbGVkIGtleXM6IHVuYWJsZSB0byBjbGFpbSBncGlvIDQ3OSwgZXJyPS0yMgpb
ICAgIDQuNzQyNjQyXSBncGlvLWtleXMtcG9sbGVkOiBwcm9iZSBvZiBrZXlzIGZhaWxlZCB3aXRo
IGVycm9yIC0yMgoKRml4IGl0IGJ5IGRlbGV0aW5nIHVubmVkZWQgcGlucyBpbiB0aGlzIGdyb3Vw
CgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29uesOhbGV6IENhYmFuZWxhcyA8ZGdjYnVldUBnbWFp
bC5jb20+Ci0tLQogLi4uLzEzNC1waW5jdHJsLWFkZC1hLXBpbmNvbnRyb2wtZHJpdmVyLWZvci1C
Q002MzQ4LnBhdGNoICAgICAgIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvcGF0Y2hl
cy01LjQvMTM0LXBpbmN0cmwtYWRkLWEtcGluY29udHJvbC1kcml2ZXItZm9yLUJDTTYzNDgucGF0
Y2ggYi90YXJnZXQvbGludXgvYmNtNjN4eC9wYXRjaGVzLTUuNC8xMzQtcGluY3RybC1hZGQtYS1w
aW5jb250cm9sLWRyaXZlci1mb3ItQkNNNjM0OC5wYXRjaAppbmRleCBiNDg3MjNjMWIzLi5iNTJm
YjU4MDBmIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYmNtNjN4eC9wYXRjaGVzLTUuNC8xMzQt
cGluY3RybC1hZGQtYS1waW5jb250cm9sLWRyaXZlci1mb3ItQkNNNjM0OC5wYXRjaAorKysgYi90
YXJnZXQvbGludXgvYmNtNjN4eC9wYXRjaGVzLTUuNC8xMzQtcGluY3RybC1hZGQtYS1waW5jb250
cm9sLWRyaXZlci1mb3ItQkNNNjM0OC5wYXRjaApAQCAtMTU5LDcgKzE1OSw3IEBAIFNpZ25lZC1v
ZmYtYnk6IEpvbmFzIEdvcnNraSA8am9uYXMuZ29yc2tpQGdtYWlsLmNvbT4KICt9OwogKwogK3N0
YXRpYyB1bnNpZ25lZCBncm91cDBfcGluc1tdID0gewotKwkzMiwgMzMsIDM0LCAzNSwgMzYsCisr
CTMyLAogK307CiArCiArc3RhdGljIHVuc2lnbmVkIGdyb3VwMV9waW5zW10gPSB7Ci0tIAoyLjI2
LjIKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
