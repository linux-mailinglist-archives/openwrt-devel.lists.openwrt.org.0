Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE51311A8CD
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 11:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2EZwJ6i/pcPFvMVDr+iDYTeDJMjnYtlbc0b1gM5sbU=; b=s7X5uyg6aHb4YO
	1hcIBwc/rhGQAoc5t3xj6zRmxoP3Utpb/S0B8u2Skf8DSvYpz1PZJ2tFzMFJMf2vkm5My9tsFWziy
	u2U7hJ7MT5ab8lYXdD3MUuDhUyTkHeWLBG1uOZWZWOcQXnqVd90cek9PIA5Gks7+oqf8CtgBsdqci
	Z3u783NXtdNRPvefXNAHCNpprDkcwqifxom6sHKtayaQB23BtM8bfnEH5dE5Q2GiQD+H5meSumcKs
	Qjf+IePl/qIjR3bYIFCseAqOrNG90NrGemM1B33duNeWModWPmuVQPl49/357v/Dw5/7FSxNBiw2p
	Kqd8LEZ07U+QgQ14DSZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezAZ-0005BP-8N; Wed, 11 Dec 2019 10:24:35 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezAN-0005Al-UA
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 10:24:25 +0000
Received: by mail-oi1-x234.google.com with SMTP id d62so12707065oia.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 02:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=trZ54nCVE8MrdeQpa7IIjADW8w5odR9CxwNxeJp1B7U=;
 b=g4Zq13LN4crZhBr9jJtxJD3N2RoElaYJy25JDy49g84juUrqEYBcPsHuioM725NC0n
 /sE7kbToP7CsmHqtfNzWNDniMhH6pUn+2S5vcllcNDonPYU1iVEHj2VlK/Guu59LSWtF
 bV2C0izUaHlXfsBJaPQYG5ivo/+cCGSnFYP2zmAd6wVReyqvZkjvH+JuoAW6cpuWaytv
 zkaPe5rAhXTWgWmg1siznGlizZFE84Z4HE10pQ3jWdmBcVNAbTmFw7sVRxICIFYcefWW
 dGnAf3PX8neThPyNNSdK96P88TMMcjeEPtpW6JFNmhi/LdH3GBW6ryhb9dzXbGYnYA4V
 qjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=trZ54nCVE8MrdeQpa7IIjADW8w5odR9CxwNxeJp1B7U=;
 b=HXR47Rq/hb5IWj45UJ4yDLeJWPiATewXsAwSwDxOW8iWuIjLaXV/NV5OUAbjNaiUuR
 EkHC5sy3E67iAIc3M0AkSyRwFJrFdqMPllaqnOR522EyRXBEI8k0N2BbznUCu3Blg4gy
 hDL245fceFnVNb5DicI21584BSg8WYEmwPHtV1wpCOCjhSiy9igdWg32sLye/L6WS10x
 krLWrneiQcTFwP9nEx8R9s0oQ1m2u172SaHMklBW1+a7Z/zBuoAxYHeLRAnaEWMAtntW
 wBz5lKA5uaUc01sSSqlbtaRrPZjDhXsNy1i/QzPRzyjwdEq2dYi4MaDa5M8YLiKs1M+e
 ggag==
X-Gm-Message-State: APjAAAWolicly9e9bCzt/1BZCr43YlWuyojZtLFcjEvlESOh6VGBQ0kD
 gvNmlV6Sl60/cp7wN54Qk7XMP/+hiWLs5LYhVTc=
X-Google-Smtp-Source: APXvYqzYqJK6IJYdGl6k/eHcfmWWwEskKYZuLg8KzMJoycPeGVbQHpITw1fuHdArFyYQQ5BNjradDa5FPh/U2VNKMVk=
X-Received: by 2002:aca:3b54:: with SMTP id i81mr2226557oia.155.1576059862442; 
 Wed, 11 Dec 2019 02:24:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:350:0:0:0:0:0 with HTTP;
 Wed, 11 Dec 2019 02:24:21 -0800 (PST)
In-Reply-To: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 11 Dec 2019 11:24:21 +0100
Message-ID: <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
To: rqgxfc <rqgxfc@vip.163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_022423_996839_2D05A873 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
Subject: Re: [OpenWrt-Devel] Inquery
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

c3VjayBpdAoKT24gMTEvMTIvMjAxOSwgcnFneGZjIDxycWd4ZmNAdmlwLjE2My5jb20+IHdyb3Rl
Ogo+Cj4KPiBIZWxsbyBTaXIg77yMCj4KPiBXZSBhcmUgIGEgdHJhZGluZyBjb21wYW55IG5hbWVk
IFNoYWFueGkgSGFvIFppIEd1YW4gTWF0ZXJpYWxzIENvLixMdGQgIC4gTm93Cj4gd2UgYXJlIHZl
cnkgaW50ZXJlc3RlZCBpbiB5b3VyIHByb2R1Y3RzICwgd2Ugd2lsbCBwbGFuIHRvICBzZWxsIHlv
dXIKPiBwcm9kdWN0cyBpbiB0aGUgQ2hpbmVzZSBtYXJrZXQgLiBJZiB5b3UgYXJlIGludGVyZXN0
ZWQgaW4gY29vcGVyYXRpb24sCj4gcGxlYXNlIHNlbmQgdXMgYSBjYXRhbG9nIGFuZCBwcmljZWxp
c3QgLncKPiBMb29raW5nIGZvcndhcmQgdG8gcmVjZWl2aW5nIHlvdXIgcmVwbHkgLgo+Cj4gQmVz
dCByZWdhcmRzLAo+IENhdGhlcmluYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
