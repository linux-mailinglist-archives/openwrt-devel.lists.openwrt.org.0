Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA421334D
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 19:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cQpMie6JfLyS+B4dIfSyWtHLmFRuRn8SDYihDqIl6M=; b=FwYCg5cvGqZUKE
	X2wuH097X5OIKJXBLQ25YUFns2ZKgkkIalEjuM4+Bc+Yr7rATkQhLaq0F0kICBMiTS91Nwf33TNCO
	JLIEf6FwuUaxkKAhRCAZD5pjjnZdx8aH0bl2VXHX5g9v2dtDo2+RCPJKPaOJM5NvkmLiL7HlUhvKd
	+beHxqrm5NNWW8VQ89oxAumppM5eOrcaUYJ+A3UVYgTGKjY+mq/D58YMkxcRl6rAQvrKK9L2Kf5Jq
	jZ5pIrZ53KQJJ+ueGmy5VrOE7BenFua0RX6qeVKmqmsSvWB7To4cNPQDQY9HuDJaSBSICdo0w6MVS
	+B2sOUKJvatcgPQtjOFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcK0-0005Q5-7F; Fri, 03 May 2019 17:50:08 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcJp-0005Pf-EQ
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 17:49:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id e24so3215905pfi.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 May 2019 10:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1Y5x73fnmduHyKCFFuOBO5DUjBxWdIegX6SybbBmsHA=;
 b=TuSsp66aq5Jp7+EISuNDFVqwzZSZlqUi7olNWhJJu55i+d2uClVEkNw8Vywip1anmK
 HQd23JcygxywFMC/MbrCqkVpFnlICRHcyO5YtmYkCah0wKPA9ijpEmhOVLqI+SG81Yor
 VWMUTs9bQXsqNOGf1Rf782AOKdVcbHo4Cq0qkPytT7CUuswzn2z4wjG2RcjAxtjXUC4B
 WTxDHwAw84RNWl3XzEkUr4UM76JaI0CvLPEqygJJaqyW2uhlT4m6vFN+Vrlh2250g4LV
 KG1kD3lcOy5Rjllkm8p8sz/xwKSlwciHk0gczqSGI34cJgKEUr/vNGgQqUP1fNbkDDS5
 s/cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1Y5x73fnmduHyKCFFuOBO5DUjBxWdIegX6SybbBmsHA=;
 b=oOHX7C/p7TJrw01iXxD5JKjTUqcr2HdoHrfFETbR8mQOiRrH/07nmLll0kzXrq23/5
 8sJT0rtGFGbjagodmpfhzB9SqjRpzaLheoj3lvDLjLr9P+amdPnkpXqWtI1eN+b9q2Pl
 xpie6JEGwAM8hzCqH28LqE09cXF8QuzdjPWzEVPsR2DcmJcA7v9a1qNycbUI0cu8MlqM
 vBelSr5T1MJmctYtN/ZfOqcUdzUIOL+iwUs2zzyjT545GTqaek2vU/iLk6cISuxKh67g
 hnaYyDX60qXTQ1CossozJPZQgJDknLWXT73VU2eRgzSkpXNhSCLMQKRw/eLCHJRUqCyY
 8X2w==
X-Gm-Message-State: APjAAAXMPDD72pqSDebl4tmSTxzfEIatseNQVb4OrWv+/DTnyzOlaOKq
 vB240xCIYIotWcsEnAEZPos=
X-Google-Smtp-Source: APXvYqwLhUU+h/Rup9TgFcM+HkflQZjPxT/FVJi7PY43xHCEuVM0j6BteJQ11pnrX2MlBsMyaJI4gA==
X-Received: by 2002:a63:c145:: with SMTP id p5mr11814119pgi.339.1556905796149; 
 Fri, 03 May 2019 10:49:56 -0700 (PDT)
Received: from ?IPv6:2002:4c0e:6a8c::a449:4807:4630:5e3f?
 ([2002:4c0e:6a8c:0:a449:4807:4630:5e3f])
 by smtp.gmail.com with ESMTPSA id n15sm8142864pfb.111.2019.05.03.10.49.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 10:49:55 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Rosen Penev <rosenp@gmail.com>
X-Mailer: iPhone Mail (16B92)
In-Reply-To: <20190503171748.GA3101@meh.true.cz>
Date: Fri, 3 May 2019 10:49:54 -0700
Message-Id: <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
References: <20190501170445.4607-1-rosenp@gmail.com>
 <20190503171748.GA3101@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_104957_507322_B2FA1C2E 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIE1heSAzLCAyMDE5LCBhdCAxMDoxNywgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4gCj4gUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDE5LTA1LTAx
IDEwOjA0OjQ1XToKPiAKPiBIaSwKPiAKPj4gVGhlIDggeWVhciBvbGQgZmlsZSBkb2VzIG5vdCBo
YXZlIGFueSBBUkMgZGVmaW5pdGlvbnMuCj4gCj4gSSdtIHdvbmRlcmluZyBpZiB3ZSBuZWVkIHRv
IGNhcnkgYW5vdGhlciBwYXRjaCBmb3JldmVyLCB0aHVzIGlmIGl0IHdvdWxkbid0IGJlCj4gYmV0
dGVyIHRvIGJhY2twb3J0IHVwc3RyZWFtZWQgcGF0Y2ggYW5kL29yIGJ1bXAgdG8gZml4ZWQgdXBz
dHJlYW0gdmVyc2lvbi4KQXMgSSBzYWlkLiBUaGlzIGZpbGUgaGFzIG5vdCBiZWVuIHRvdWNoZWQg
aW4gOCB5ZWFycy4gVXBzdHJlYW0gYWxzbyBzZWVtcyByZWxhdGl2ZWx5IGRlYWQuCj4gCj4gLS0g
eW5lenoKPiAKPj4gU2lnbmVkLW9mZi1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+
Cj4+IC0tLQo+PiBwYWNrYWdlL2xpYnMvbGliYnNkL01ha2VmaWxlICAgICAgICAgICAgICAgICAg
fCAgMiArLQo+PiBwYWNrYWdlL2xpYnMvbGliYnNkL3BhdGNoZXMvMDEwLWZpeC1hcmMucGF0Y2gg
fCAxNSArKysrKysrKysrKysrKysKPj4gMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+IGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL2xpYnMvbGliYnNk
L3BhdGNoZXMvMDEwLWZpeC1hcmMucGF0Y2gKPj4gCj4+IGRpZmYgLS1naXQgYS9wYWNrYWdlL2xp
YnMvbGliYnNkL01ha2VmaWxlIGIvcGFja2FnZS9saWJzL2xpYmJzZC9NYWtlZmlsZQo+PiBpbmRl
eCA0MTAxZDVlMGVlLi42M2I5Y2VhZmMzIDEwMDY0NAo+PiAtLS0gYS9wYWNrYWdlL2xpYnMvbGli
YnNkL01ha2VmaWxlCj4+ICsrKyBiL3BhY2thZ2UvbGlicy9saWJic2QvTWFrZWZpbGUKPj4gQEAg
LTIsNyArMiw3IEBAIGluY2x1ZGUgJChUT1BESVIpL3J1bGVzLm1rCj4+IAo+PiBQS0dfTkFNRTo9
bGliYnNkCj4+IFBLR19WRVJTSU9OOj0wLjguNwo+PiAtUEtHX1JFTEVBU0U6PTIKPj4gK1BLR19S
RUxFQVNFOj0zCj4+IAo+PiBQS0dfU09VUkNFOj0kKFBLR19OQU1FKS0kKFBLR19WRVJTSU9OKS50
YXIueHoKPj4gUEtHX0hBU0g6PWY1NDhmMTBlNWFmNWEwOGIxZTIyODg5Y2U4NDMxNWIxZWJlNDE1
MDViMDE1Yzk1OTZiYWQwM2ZkMTNhMTJiMzEKPj4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvbGlicy9s
aWJic2QvcGF0Y2hlcy8wMTAtZml4LWFyYy5wYXRjaCBiL3BhY2thZ2UvbGlicy9saWJic2QvcGF0
Y2hlcy8wMTAtZml4LWFyYy5wYXRjaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAw
MDAwMDAwMDAwLi43YjFiY2JlMzQ4Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvcGFja2FnZS9s
aWJzL2xpYmJzZC9wYXRjaGVzLzAxMC1maXgtYXJjLnBhdGNoCj4+IEBAIC0wLDAgKzEsMTUgQEAK
Pj4gKy0tLSBhL3NyYy9sb2NhbC1lbGYuaAo+PiArKysrIGIvc3JjL2xvY2FsLWVsZi5oCj4+ICtA
QCAtNTMsNiArNTMsMTIgQEAKPj4gKyAjZW5kaWYKPj4gKyAjZGVmaW5lIEVMRl9UQVJHX0RBVEEg
ICAgRUxGREFUQTJMU0IKPj4gKyAKPj4gKysjZWxpZiBkZWZpbmVkIChfX2FyY19fKQo+PiArKwo+
PiArKyNkZWZpbmUgRUxGX1RBUkdfTUFDSCAgICBFTV9BUkMKPj4gKysjZGVmaW5lIEVMRl9UQVJH
X0NMQVNTICAgIEVMRkNMQVNTMzIKPj4gKysjZGVmaW5lIEVMRl9UQVJHX0RBVEEgICAgRUxGREFU
QTJMU0IKPj4gKysKPj4gKyAjZWxpZiBkZWZpbmVkKF9fYXJtX18pCj4+ICsgCj4+ICsgI2RlZmlu
ZSBFTEZfVEFSR19NQUNIICAgIEVNX0FSTQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
