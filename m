Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA0A15FDEF
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 11:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3r2g09ibmNNAwWPKf+xZITFD60PyGlSAo9Oce7nEzY=; b=Uclou6EVy9RUYi
	CVMNqR0C5fcIeXh7L2La4i7TtLdmylIO1L4OvBSax8vwyLK0ugoozxdg/uoGW4jyV5qeWRkSF5KDi
	vpTxFrs0agXHrQMStnfHilqTj/4BCvTwUWMC91HgsvB9W4JbjZGjyI+PxV/hTbhuS6C+p4Go5qoN0
	/87vDCrhVd+C4QGQ77HzhEoJf0WJed8QHWSRYnEivH01PfOzwYTPyaBApyDbXnpXPy05wZgxaXp8M
	J8qptzQxuafltzlkAhZtTyzademF1myR8dq1c/sVXldf/kV5KHpB99i1CQYkD+oz/zyUK26Mq8c5u
	xupNQo2w3uhMoB6CoEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2uXX-0008QJ-Vd; Sat, 15 Feb 2020 10:19:12 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2uXO-0008Q2-2S
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 10:19:03 +0000
Received: by mail-pg1-x52e.google.com with SMTP id b9so6311477pgk.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Feb 2020 02:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=FD7dIv5Hvffj4F2+/ApiErQkoNrj49H5zRpvh+XrXGM=;
 b=DWnCSZvdmCyv7JRgnqAujIMfMo1XXTTUneGxzJf7Ztr1hMb/VvC800fvW9hzFfVMuT
 lTcsPp9LB//92q054n4pyNXo59Kbm+212BG6zv/Gm5Kcpc8yK0NAf7oV9DKsnDE2ADrj
 eBYTS56CeYiZ4dFxLkINsbt803qEAMcv8fhybi3E0uCf4WV9/ZMrko8cq16PwcB2HwR/
 SwRaODN0745Thp0unbHzeH6hn7gSQn5i5FH1SiilQw5G+SmW8xz8maIVRE1bRxRA7Shn
 kVW9iXPhHJYzfFi6T9fIhtiVnoohqih0XYlMGpiAIgDZxA3Ju/NA7P0qE18C2Bvx4HnO
 OU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=FD7dIv5Hvffj4F2+/ApiErQkoNrj49H5zRpvh+XrXGM=;
 b=ZY4tb3VhZ5gS7pE9djKu50DnSaxS+MVPi41SmqzYAife3KlJl8F6jy4vVX8sfvEV6s
 nWwEfciEFb9pT8u3WiIcsfbF4t65goawhkm93NUB8rN7QcObq+foov9VU8PgINt/MdAM
 L4z75qNswEYFh6XQAjVXlmNr/Lz2qs+ea9EELfcoKWDKFGIX6j0g6RNNu00kIXcweRbY
 ggukZ3zR6O9MmgEYFe2gRpeDCTHADVGKkWG4UJL2OENVhGgCnNT0elhjvij1CHqaJ4Y2
 1dpGVRK+T3Hb8kHGCuG11G47twoJ9q2EdG4cOm5gU5EmoiU38klVV/8j+Jbu8ZxCyH/i
 fl2w==
X-Gm-Message-State: APjAAAVZjVnTVGRxhUsAujpC/H/qhx7IJUdVBUPAsJWOTWPXF3ubH4wf
 sobGKDGEV02VID9M69YhycM=
X-Google-Smtp-Source: APXvYqxIiczhMhNnowtsbb9LR26n7n0nuzmB613F9r1zDkhGiBRViXHs0wEpVfJ1fTVKvjm08inT4Q==
X-Received: by 2002:a62:788a:: with SMTP id t132mr7764981pfc.134.1581761940474; 
 Sat, 15 Feb 2020 02:19:00 -0800 (PST)
Received: from ?IPv6:2002:452a:d6:0:ddba:6cdf:13c8:35a9?
 ([2002:452a:d6:0:ddba:6cdf:13c8:35a9])
 by smtp.gmail.com with ESMTPSA id f13sm10304575pfk.64.2020.02.15.02.18.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 Feb 2020 02:18:59 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 15 Feb 2020 02:18:58 -0800
Message-Id: <ADB10B7B-F636-40FA-97CF-C64BDA539ED1@gmail.com>
References: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
In-Reply-To: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
To: e9hack <e9hack@gmail.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_021902_139989_9A0F7436 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Tor is broken
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
Cc: jan.pavlinec@nic.cz, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZlYiAxNCwgMjAyMCwgYXQgMTE6MjQgUE0sIGU5
aGFjayA8ZTloYWNrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4g77u/SGksCj4gCj4gdG9yIGRvZXNu
J3Qgc3RhcnQgc2luY2UgY29tbWl0IGNhNjUyOGYwMDJkNzQ0NDVlM2QwYTMzNmFlYjkwNzRmYzMz
NzMwN2E6Cj4gCj4gdG9yOiB1cGRhdGUgaW5pdCBzY3JpcHQKSXTigJlzIHRoZSBwaWRmaWxlIHBy
b2ZzIHBhcmFtZXRlciB0aGF04oCZcyBicmVha2luZyB0aGluZ3MuCj4gCj4gQ2hhbmdlczoKPiAt
YWRkIHVjaSBjb25maWcKPiAtY3JlYXRlIHBpZCBmaWxlIGJ5IHByb2NkCj4gLWFkZCByZWxvYWQg
ZnVuY3Rpb24KPiAKPiBGZWIgMTUgMDg6MTc6MjAuMDAwIFt3YXJuXSBVbmFibGUgdG8gb3BlbiAi
L3Zhci9ydW4vdG9yLnBpZCIgZm9yIHdyaXRpbmc6IFBlcm1pc3Npb24gZGVuaWVkCj4gRmViIDE1
IDA4OjE3OjIwLjAwMCBbZXJyXSBVbmFibGUgdG8gd3JpdGUgUElERmlsZSAiL3Zhci9ydW4vdG9y
LnBpZCIKPiBGZWIgMTUgMDg6MTc6MjAuMDAwIFtlcnJdIHNldF9vcHRpb25zKCk6IEJ1ZzogQWN0
aW5nIG9uIGNvbmZpZyBvcHRpb25zIGxlZnQgdXMgaW4gYSBicm9rZW4gc3RhdGUuIER5aW5nLiAo
b24gVG9yIDAuNC4yLjYgKQo+IEZlYiAxNSAwODoxNzoyMC4wMDAgW2Vycl0gUmVhZGluZyBjb25m
aWcgZmFpbGVkLS1zZWUgd2FybmluZ3MgYWJvdmUuCj4gCj4gUmVnYXJkcywKPiBIYXJ0bXV0Cj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
