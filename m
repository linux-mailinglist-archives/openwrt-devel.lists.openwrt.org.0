Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978E92012B
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 10:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9GZRKz13rvIqpepZT9TQd1FrWAW3oTiyrlxvNPYD44=; b=mbHujN8FtuTQQR
	CESSM6WrJN3n3nmwm6J7bip5fWfS0yMTnM9y2xJrrQUGCciGr3vRRmatcndFcnOn4eHudnXrjL654
	KWBOG31W72F5UNunc1JIE1keEsVoNSPMLcA8kCOSc7sP6wfG1tMbqmAIUPUE2/XRJ4A+ATK7Ewbqu
	eQKHKjHpmI1x2uftJ0R2NdCyiYdf/nk1edS4koyS2Y3y2Ll1XnGJbP2gm3KczA05qrPG40+eiovjL
	7M4WM5Q5fwt+1oNo52EHYGop9Vpj511nivlBZTNfpTB3tsK/OWe6yM92RayrPIdKFUVLizPoRgTSf
	ZPWAfXW1hZ5L8eobwEAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBcf-0004Ul-C6; Thu, 16 May 2019 08:20:17 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBcZ-0004U5-Ey
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 08:20:13 +0000
Received: by mail-it1-x143.google.com with SMTP id m3so940683itl.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 01:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=O0+2bDDGR4n9tEVVogHx//+sckVhkFzj4KVkcJlmKDg=;
 b=lBZszPxiIVmaE4k3UFnI9d2jo4j9argPJQfn0GJDv8L6Ube+dKlE18/1IKd8W8adNu
 KqGLJc1/7SD0qMCXRJPtprJrMCaYYQ8ecsprBEkvnBx8UwQyMb/C6w9Ww1Qn6lrKMI2q
 r0lx1HzOIELTXyVbB/+eoWeYZ7SKD/ZUXbggjUUmY2Oyn5xXYO4F2bqrAejnvCmpZchF
 Dzh54vVWRsy9pLpM2lsz8ka0XPl5iLOAOsq5AJE6tiUSpf6PvuMqBXwRFcyrAuzeN0/G
 lQGUeLJcow5PCYoMEEqPcFfUBF5OnncofCoZKTB+mEnn5g2qZnjKi4Rit2N/o1FjKqRw
 lWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=O0+2bDDGR4n9tEVVogHx//+sckVhkFzj4KVkcJlmKDg=;
 b=VJxQ0+xHBaBg/gGMNp3vlcRcruYpDGKg4nxWHmacUGQgwmRtQdwYuSx8FzahEuYjPm
 iCB3H7Ns8CphPlKWUfkcNBdbmKFewLzo4O6x8H6lPdNw7lTgTXuVK0mR9Yl1spmcD9L6
 EWO9yr7/np32Mb1hex059yfNT6TtgSxi9BTSjazxWG27N8U6oQEEGbM7Q8pSvm0E4wqO
 xRMVqZEzAQiYVrwDewA+eN36iCjiT4D6uRXNKP5UKRN+3IaZwUnscUN34cxNluw5dC+d
 Im3n4bif6wnv/wgBR5dmduCjIbn2tVrFLc20U5srZ3ipCl8OThjA/PPf2iPID3YRPsmn
 HQUQ==
X-Gm-Message-State: APjAAAUjQDMG1Dl3j16P4fGY0uQsRzHxfDCByQrwtobVxS+E4Ee5LvCf
 1hNThvyYluIy6V147RDDpTAvbweLlcwN96OSTzA=
X-Google-Smtp-Source: APXvYqw03yKxujUXzfSQERhbgYBa6OAjAJNQqQ0qaFRp3QlAog+Rxe/fNhI5x/yZiBEYvMUVzk0tCz/oq5JOTMoorAI=
X-Received: by 2002:a02:6411:: with SMTP id t17mr31964131jac.90.1557994810169; 
 Thu, 16 May 2019 01:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190515185045.22878-1-kristian.evensen@gmail.com>
 <20190515192113.GC63920@meh.true.cz>
In-Reply-To: <20190515192113.GC63920@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Thu, 16 May 2019 10:19:59 +0200
Message-ID: <CAKfDRXjzwCDur1Sh19Wr1_2LKP+FAbCk1Ns_werBUqKPD2RzEw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_012011_505266_7F66E426 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v4] ramips: Add support for Head Weblink
 HDRM200
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBXZWQsIE1heSAxNSwgMjAxOSBhdCA5OjIxIFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+IHdyb3RlOgo+IFRoYW5rcywgSSd2ZSBtZXJnZWQgaXQgaW50byBteSBzdGFnaW5n
IHRyZWVbMV0sIGJ1dCBJIGhhZCB0byBmaXggb25lIG1lcmdlCj4gY29uZmxpY3QgaW4gdGFyZ2V0
Lm1rIHNvIHBsZWFzZSBjaGVjayBpdCBpZiBJIGRpZCBpdCBwcm9wZXJseS4KClRoYW5rcyBhbmQg
c3RyYW5nZSBhYm91dCB0aGUgY29uZmxpY3QgKyB3aGl0ZXNwYWNlLCBhcyBwYXRjaCBhcHBsaWVz
CmNsZWFubHkgdG8gbWFzdGVyIGFuZCBjaGVja3BhdGNoIGRvZXMgbm90IGNvbXBsYWluLiBBbnl3
YXksIHRhcmdldC5tawppbiB5b3VyIHN0YWdpbmcgZGlyIGxvb2tzIGdvb2QgdG8gbWUuCgpJIHdp
bGwgcHJvY2VlZCB3aXRoIHVwZGF0aW5nIHRoZSBwYXRjaCBmb3IgdGhlIFpCVC1kZXZpY2UgSSBj
cmVhdGVkIGEKUFIgZm9yLCBiYXNlZCBvbiB0aGUgd29yayBkb25lIHRvIGdldCBzdXBwb3J0IGZv
ciB0aGUgSERSTTIwMCBtZXJnZWQuCgpUaGFua3MgYWdhaW4sCktyaXN0aWFuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
