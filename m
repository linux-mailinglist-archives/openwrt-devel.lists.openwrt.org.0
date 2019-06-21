Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928CF4EDBC
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 19:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=blEHpnQtY/g6yesdT8lvcHpvA6AKMkDZNSUWG/bqXEU=; b=rmVzQyDKH13QD1g1RwSiddiCm1
	sCMqSrV14DmMAmeAmTVATzlJiYdjZDa0ShSAPfsqJJc8oxWQO5M6M4VhwlOrxGxJMO3fOClYB6NSG
	v0a6Sn1ssSrvSrOIEgvD/IjswfQn/5KkX89nh3cuXkUACv+3la/QAez47tTO5zn3tRGv/INycxPYA
	DGvs1C+FpreFVQACZewbiaGSXdCXCJtOkfZXxw7euLZj7SpyI+mTiJnjrwU1Xx1LpUpIlpMsCnYst
	SkaIrOlayx8Dh+dh/fXd51QAB/JVVw3AZXRTDZY3nJT1nkt1xxZtKOVDulMCD3RR34XjFVK6r3sVN
	PeG84n5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNEx-0004yu-Cc; Fri, 21 Jun 2019 17:22:19 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNEn-0004yZ-PC
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 17:22:11 +0000
Received: by mail-yb1-xb41.google.com with SMTP id p8so2923412ybo.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 21 Jun 2019 10:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=rr8iccGvuy+fOlseu/cIt+xHxIW9J4zb7ANQ0QupYMo=;
 b=ZNO4m26Sjqbj10zrBIGbkWjyyymkub3BdgFbWDu1GDxuaPYOt61OxETx/tz5oc4A5Y
 FcUo4wty0h1TshfAgeCB1PeKrHpbjujiJr+VpeP99Kfy0r6ns4+OBbM+NMVkBjmUBDW1
 Alka8gFgcGqmGBbamLlbRSqBm+f3XbP7ej0mSUtY4YlV2g9/9j2EeACCd1n34YuSBggx
 P3mq1OtLUdrfSEq9iiw1eURf7FWCvf4bwb9S4dKadqYsMr50rFrCDHx06B6b4DatoCcn
 0tWu3tyqKJ7eoVfiGllJ7yUkJqc4P5VvvQf1nu9oGFzlIj6Pm96zNpIh0UTzDjz8ZwQh
 JPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=rr8iccGvuy+fOlseu/cIt+xHxIW9J4zb7ANQ0QupYMo=;
 b=q8r7UjmZI+StOMVqbnI9PF1S/PRD+kfGB0gncwTYUfMUasqe/6bHgHn2S5GPyWzuH/
 jP3sDIT+HwG5/kKmMD7sFgqwuFyTLidho+L+A+pJtqBBpYgBEfBh6O8USE31IcFZS8NZ
 dDMjYveKyt+TrjFnFFFIMPtCXQhYPn3Rc4XLV+q9ewFcV9iBmaNtT2xlzqoqrnvekdQU
 sC+8w3l913ZjkjJ5C1qSr3WvWfAIFSNESQOFhYVL6bvvr1bxx7mHATczsOxSJRln3DkT
 O7akrEip6kN/UivnzCK+WmGcZlKy7KmoPwsregWoGjVXHzAQl9y5EtOcVG+OihShu4ez
 kJDA==
X-Gm-Message-State: APjAAAVtsUwSKo3t0YjAo2/gO1Grb7QKOHcOIElxfj7FphJMDEaVb6XH
 hRIpSZEkCj+mUAa3D3kWVJv4thXkgnx3kAsVWes6b3ca
X-Google-Smtp-Source: APXvYqw0s0xt2rgC6TpCNvRxx6uHoGkprbbL139W1QszAxUIR/Tx/rqr5N2Y3jS+b6ZStX6Ia18jQPjsE1Tjp3JdSeE=
X-Received: by 2002:a25:4d5:: with SMTP id 204mr30151053ybe.112.1561137725418; 
 Fri, 21 Jun 2019 10:22:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190621123002.9404-1-zajec5@gmail.com>
In-Reply-To: <20190621123002.9404-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 21 Jun 2019 19:21:54 +0200
Message-ID: <CACna6rwMZk5+LJXDOFpfa906TLSzxZphQZAJ5n8Dki8BhpQ7Tw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jow@openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_102209_844921_ECFE0C8D 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] lua: include version number in
 installed files
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCAyMSBKdW4gMjAxOSBhdCAxNDozMCwgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPiBGcm9tOiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+
Cj4KPiBUaGlzIHdpbGwgYWxsb3cgaW5zdGFsbGluZyBMdWEgNS4xIGFuZCBuZXdlciB2ZXJzaW9u
cyBhdCB0aGUgc2FtZSB0aW1lLgoKSSBmb3Jnb3QgdG8gYnVtcCBQS0dfUkVMRUFTRS4gSSdsbCBo
YW5kbGUgdGhhdCBpbiBWMiBvciB3aGVuIHB1c2hpbmcgaXQuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
