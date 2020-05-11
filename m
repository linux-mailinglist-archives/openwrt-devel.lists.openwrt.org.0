Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43951CDD81
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 16:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DG8BQ23zBSPa2HUSsDFQv5rfq7obr13C71Q9n/Fkjyw=; b=mxIs9t6rAI5iOJ
	eRSNGpgR+PSBV56vJyrcVdqgv8h8nPc01P8Hv9+WvdhnzQi6wduw8Lf7SdNcGn7BfJK1xiyda3pti
	sH8aMBGxoxn5wQfiCfVKIbKsx82cziHE+ptEAtpH7v3WqJBgE4sFfxf2JmtiE+Vs9NxFwSFDxJ8T/
	YdXun+Rust1IWr1/jqIhBJUZY3LA1aOAZqYT32NbvOYer3g9X/8n0bOFd3ErHbJCFvF7RRwsWj6FN
	oC0Mx3sk9g341T/0yAwXzUfxmhum+rQxNr/AFxfhlzhtJ1y+aZat/BA4boniDWvbzA7E4DuFibxSA
	3e1hl44iyoilVGKHAbvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9fD-0002Mv-8g; Mon, 11 May 2020 14:44:15 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9f6-0002Mb-GL
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 14:44:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id e25so9788519ljg.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 May 2020 07:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=jYPXOxVTzQ3WdxW8hnvmGuEqYU+n6HuZb6UOaF62Lq4=;
 b=NiZgpu92uhWlyvMnGLHAktUF4OOOrJoD3yR4hEvCjQU0iYPmKD/GeRkSgO/82Ruv8/
 32O+eYqoV9HS2EgM0jS7u4ce1y4xMvQ/aj8ILYORVJbedYm8qau07hYuJSBWPT6P7OgL
 BHe9MoED88T0FL6zwGDQKhO3mhJb8mS+kIQWebDyz2SuSzgMmK/uLV5iHLmxOvgb631L
 mca2AKWPNbqYHWGJyPr9CvCZ/2tHbQ1tQlCX/S7rQe4Mk9sc9qZNikQH4QZckvBgC2vq
 Fb3/Zti8sH3Vcfsuyy5zOdj4R7Ri+BxJENYoGEJbC/SEcxtJ4YzoLKFBanmq5iFWhfxJ
 FhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jYPXOxVTzQ3WdxW8hnvmGuEqYU+n6HuZb6UOaF62Lq4=;
 b=TwYyrRa76VXLV/uDoIkWqIKkL7BuH8nuOak9aAcbyNlMdGiPhWBZBnvUXkWJW4lXm1
 BADeneow7zhfPLWFa1LmGo9+VCoW5J7qi/k6VPLITHiiAuKQoWMtcOU1+UeBcYKakPBT
 S+bS62SdU00yAjhkHzTw8BzG2+fIG3PL2Ppn/jfHNYZAIUhvv9OIzhgo6KY5sL2JMolJ
 4E0TbB0iaCNh1UBNK48VaX3ASdS8S0Jb8BZBqjHLv1iCyAkBCkbbTvAq6wdGnSePYhUQ
 ecwgm0BwnZN7tke9Vt+N+4tmv3xhQI3HCvW8lbT4NTGM2+j3N9fatcdQocUykerIyrPm
 nJow==
X-Gm-Message-State: AOAM530kweYU/jUuyJMCrML5/j5CKOYqip/2VllJS64SkJ9/yeU0RKLI
 B5cjYKP6/GXuWemI+f0z1mQ=
X-Google-Smtp-Source: ABdhPJxkhP3cD3xADgTLcHMrbsQ2fAzuW5YOznLrduaQPr7qbOkNGMuHEj7WDdBjmz7hIZpcx5SlTg==
X-Received: by 2002:a05:651c:319:: with SMTP id
 a25mr9938863ljp.209.1589208242243; 
 Mon, 11 May 2020 07:44:02 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id a25sm11088317lfb.87.2020.05.11.07.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 07:44:01 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 04BEhvUw019782; Mon, 11 May 2020 17:43:58 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 04BEhuF7019781;
 Mon, 11 May 2020 17:43:56 +0300
Date: Mon, 11 May 2020 17:43:56 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200511144355.GP16976@home.paul.comp>
References: <20200511113702.10975-1-fe@dev.tdt.de>
 <20200511142542.GB69771@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511142542.GB69771@meh.true.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_074408_567904_CD141A09 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard-tools: fix version
 indicator
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
Cc: dedeckeh@gmail.com, Jason@zx2c4.com, openwrt-devel@lists.openwrt.org,
 Eckert.Florian@googlemail.com, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpJJ20gbm90IHRhbGtpbmcgYWJvdXQgdGhpcyBzcGVjaWZpYyBwYXRjaCBidXQgcmF0
aGVyIGFib3V0IHRoZSBnZW5lcmFsCnByb2JsZW0gSSdtIGF3YXJlIG9mLCBpbiB0aGlzIHNwZWNp
ZmljIGNhc2UgaXQgbWlnaHQgYmUgbm90CmFwcGxpY2FibGUuCgpPbiBNb24sIE1heSAxMSwgMjAy
MCBhdCAwNDoyNTo0MlBNICswMjAwLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+ID4gSWYgd2UgZXhl
Y3V0ZSBgd2cgLS12ZXJzaW9uYCB3ZSBnZXQgYSBkaWZmcmVudCB2ZXJzaW9uIHN0cmluZyB0aGF0
IGRvZXMKPiA+IG5vdCBtYXRjaCB3aXRoIHRoZSB2ZXJzaW9uIHN0cmluZyBpbiB0aGUgb3Blbndy
dCBtYWtlZmlsZS4KPiA+Cj4gPiBDdXJyZW50IHZlcnNpb24gc3RyaW5nOgo+ID4gYHdpcmVndWFy
ZC10b29scyB2cmVib290LTEzMTU5LWdhYzVjYWEyNzE4IC1odHRwczovL2dpdC56eDJjNC5jb20v
d2lyZWd1YXJkLXRvb2xzL2AKClRoaXMgaXMgY2xlYXJseSB0aGUgZ2l0IHRhZyBmcm9tIE9wZW5X
cnQgdHJlZSBpdHNlbGYuCgo+IG9rLCBidXQgSSBmYWlsIHRvIHNlZSB3aHkgdGhpcyBwYXRjaCBz
aG91bGQgYmUgbWFpbnRhaW5lZCBieSBPcGVuV3J0LCB0aGlzCj4gbG9va3MgbGlrZSBpdCBzaG91
bGQgYmUgZml4ZWQgdXBzdHJlYW0uIFRoYW5rcy4KCk1hbnkgcHJvamVjdHMgd2hlbiBjbG9uZWQg
ZnJvbSBhIGdpdCB0cmVlIHVzZSBzb21lIHZhcmlhdGlvbiBvZiAiZ2l0CmRlc2NyaWJlIiB0byBl
bWJlZCBhIG1lYW5pbmdmdWwgdmVyc2lvbiBpbiB0aGUgY29tcGlsZWQKYmluYXJ5LiBPcGVuV3J0
IGtpbmQgb2YgYnJlYWtzIHRoZSBhc3N1bXB0aW9ucyBiZWNhdXNlIGl0IGZpcnN0IGRvZXMgYQpn
aXQgY2xvbmUgYnV0IHRoZW4gcGFja3MgYW4gYXJjaGl2ZSB3aXRoIGFsbCB0aGUgc291cmNlcyBi
dXQgbm90IHRoZQouZ2l0IGRpcmVjdG9yeS4gT2YgY291cnNlIGl0IG1ha2VzIHNlbnNlIHRvIHNh
dmUgc3BhY2Ugb24gc2VydmVycyBhbmQKYnVpbGRib3RzIGFuZCB3aGVyZWV2ZXIgdGhlIGRvd25s
b2FkcyBhcmUgc3RvcmVkLiBIb3dldmVyLCB3aXRob3V0Ci5naXQgZGlyZWN0b3J5IHRoZSBjb21t
YW5kIHJ1biBieSBhIHBhcnRpY3VsYXIgYnVpbGQgc3lzdGVtIHdpbGwgb2Z0ZW4KdHJhdmVyc2Ug
dG8gdGhlIHVwcGVyIGRpcmVjdG9yaWVzIHVudGlsIGl0IGZpbmRzIHRoZSBPcGVuV3J0IHRyZWUK
LmdpdC4KClByb2JhYmx5IHRoZSByaWdodCB3YXkgdG8gc29sdmUgdGhpcyB3b3VsZCBiZSB0byBo
YXZlIG1lYW5zIHRvCm92ZXJyaWRlIHRoZSBkZWZhdWx0IGdpdCBkZXNjcmliZSBiZWhhdmlvdXIg
KGFuZCBmb3JjZSBzcGVjaWZpYwp2ZXJzaW9uIHN0cmluZyBpbnN0ZWFkKSBieSBhIGNvbmZpZ3Vy
ZSAob3Igc2ltaWxhcikgZmxhZy4gVGhhdCB3b3VsZApyZXF1aXJlIGNvbGxhYm9yYXRpb24gd2l0
aCB1cHN0cmVhbSBidXQgd2lsbCBhbHNvIG5lZWQgc29tZSBhZGRpdGlvbmFsCnR3ZWFrcyB0byB0
aGUgT3BlbldydCBwYWNrYWdlIE1ha2VmaWxlLgoKLS0KQmUgZnJlZSwgdXNlIGZyZWUgKGh0dHA6
Ly93d3cuZ251Lm9yZy9waGlsb3NvcGh5L2ZyZWUtc3cuaHRtbCkgc29mdHdhcmUhCm1haWx0bzpm
ZXJjZXJwYXZAZ21haWwuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
