Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACB4E8001
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 07:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J2+uppYpknhJpkWpCMySaR6OQ3I7J36msCoeEl6Pytk=; b=pVo7lmUg4v56fyuwGx4C9b7WP
	moy4JqcBd3T4lpQlUPkbJt6vRcA5J0veYYyVMpRQ0i/zyuNpuHs29Z0FNtr5C03uMIqozhyAOri8T
	tdqDe7mjIjxtCF/HfpdVQ8ItEZtnq1kkmjAbCJiUQjyOUqRQGgbPky5ZA82WE/2j0vEXIr/ZWJC3q
	E0oUn4C/uID+FLb+9VCcYmFQYn0skAPjcD4+FK2uTRYtTB8aNfyB5M2H5bNIJgqdL8xZQ2tqmTvc1
	KUspvZqe+66ugXVUUT4Q3+V7BBaE/+vE1xL2PvLYZidjlsXRF20hliu9Xh4xlKeFR/6xW74GqS9bu
	ecucKMfZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKYs-0002aW-SP; Tue, 29 Oct 2019 06:00:59 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKYe-0002XT-CS
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 06:00:46 +0000
Received: by mail-wr1-x42e.google.com with SMTP id q13so12199149wrs.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 23:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=gaSq/uD5pu1sG5wdACQ3VdxGR3YVNCIlwl/hdBjflOo=;
 b=grp1C9lMiYvMfFqMpjBoXfbQYa58oA4ICf3ln/SxHatR52zDaLxMTzLuhnc8QegrZc
 tdNp/ibsDzTZXu/XHFsByGOF35z4hfswZzny+gkp09e/5uZGNUj2XZGwbfLgEBW75B37
 Md+QQrlRpd/khrFKtQR0QyM5Esmd0sK89ebonYMq9cBgceTM7qMGI4PNHEIjSnltexjh
 EzFtq7zasrhH62uPEmk5sc4ygohq5wnm1wy70xkHbt2HI6iMHBrhj3IRdHWuiARCG1sd
 v/2rfQhGkXrQgvXwSVyV8B8VCpa4VOpXh4BWGiZG014o4bLJM3YGuIRnPUKyIq79xtbE
 5cqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gaSq/uD5pu1sG5wdACQ3VdxGR3YVNCIlwl/hdBjflOo=;
 b=l1ML3w2is96pZSB8/YuIBn5vOilgIhTZmHfmu0hTL67srbpyRxscbAJgL6lfVja02W
 qBKDX1H/FJKPCm8QRYn7iwmlJXC3NSsbY1BTrxOgrpH57wY1DX1Cz2xlrgS1fMbee0BN
 JoVFnNKGH5ZiL7bzFgjuUJaC26fhjPVtzOpgIYBP6xyG8b/jd3WlJf6dQ3NG0+iDJ2an
 +nQTpSJyInQh8YynF6oqkfQrhFA/hVz+DzhVvoI/Df/VKb94tP429TdAHZCHh3kQwf5s
 H2vhGG25bHhYoE/BxcTFHvQcBAA3Ww3fcqm55okgB02XXUdsQZAqx1kA5OhYfgybQj8R
 HWeg==
X-Gm-Message-State: APjAAAVC1DWjDlfM7MaHRu8ppr5lEVywvBAIV93KiGednDL1XPJAbCmv
 66Xbc2kaQ18+1cx7tO087TD3Eg==
X-Google-Smtp-Source: APXvYqx3nBI2q0/9Gji5jVQiSaWTe1VO3jNQrE+yXrWvaTrL8ZMr02kCLJPVsgOqMCY+er0Nyz9EyA==
X-Received: by 2002:adf:f511:: with SMTP id q17mr17372613wro.3.1572328842436; 
 Mon, 28 Oct 2019 23:00:42 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f12:f700:c946:ef35:b0c8:70cb?
 (p200300EC2F12F700C946EF35B0C870CB.dip0.t-ipconnect.de.
 [2003:ec:2f12:f700:c946:ef35:b0c8:70cb])
 by smtp.gmail.com with ESMTPSA id t1sm17077942wrn.81.2019.10.28.23.00.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 23:00:41 -0700 (PDT)
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
References: <CACna6rwe55gmb19H+EToF_jDOEDVqDOJkzhqGW-6G61=Gn2ReQ@mail.gmail.com>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <4d01d640-39da-6aa0-5027-2d96f7180bba@kresin.me>
Date: Tue, 29 Oct 2019 07:00:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACna6rwe55gmb19H+EToF_jDOEDVqDOJkzhqGW-6G61=Gn2ReQ@mail.gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_230044_572620_7B6560B3 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Network broken with kernels 5.2+
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MjgvMTAvMjAxOSAyMzowMSwgUmFmYcWCIE1pxYJlY2tpOgo+IFVzaW5nIE9wZW5XcnQgd2l0aCBr
ZXJuZWxzIDUuMisgcmVzdWx0cyBpbiBicm9rZW4gbmV0d29yay4gSW50ZXJmYWNlcwo+IHNlZW0g
T0sgYnV0IEkgY2Fubm90IHBpbmcgbXkgcm91dGVyIGFueW1vcmUuCj4gCj4gVGhpcyByZWdyZXNz
aW9uIGlzIGNhdXNlZCBieSB0aGUgdXBzdHJlYW0gY29tbWl0Cj4gCj4gY29tbWl0IGI0MjRlNDMy
ZTc3MGQ2ZGQ1NzI3NjU0NTlkNWI2YTk2YTE5YzUyODYgKHJlZnMvYmlzZWN0L2JhZCkKPiBBdXRo
b3I6IE1pY2hhbCBLdWJlY2VrIDxta3ViZWNla0BzdXNlLmN6Pgo+IERhdGU6ICAgVGh1IE1heSAy
IDE2OjE1OjEwIDIwMTkgKzAyMDAKPiAKPiAgICAgIG5ldGxpbms6IGFkZCB2YWxpZGF0aW9uIG9m
IE5MQV9GX05FU1RFRCBmbGFnCj4gCj4gUmV2ZXJ0aW5nIHRoYXQgY29tbWl0IGZyb20gdGhlIHRv
cCBvZiA1LjIgb3IgNS4zIGZpeGVzIG5ldHdvcmsgZm9yIG1lLgo+IAo+IEFueSBpZGVhcyB3aGF0
J3Mgd3Jvbmcgd2l0aCBPcGVuV3J0ICYgYWJvdmUgY2hhbmdlPwo+IAoKSGV5IFJhZmHFgiwKCmFz
c3VtaW5nIHlvdSBhcmUgb24gYSB0YXJnZXQgdXNpbmcgc3djb25maWcsIHRoaXMgcGF0Y2ggc2hv
dWxkIGZpeCB0aGUgCmJyb2tlbiBuZXR3b3JrOgoKaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9
b3BlbndydC9zdGFnaW5nL21rcmVzaW4uZ2l0O2E9Y29tbWl0O2g9M2E3NzJlZTIzMWU0YjRjMmM1
MzdkOGQ1NDFmMDAxYjUyNDJiOWMzNQoKTWF0aGlhcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
