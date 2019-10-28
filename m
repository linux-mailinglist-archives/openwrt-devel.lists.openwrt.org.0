Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A523DE7C26
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 23:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDChiSPT/tuEuPAkCb8FFpn0LF4dvynIPhltfe4h8W0=; b=Jg7yNSgWNcUicI
	7Wx6qRCaRs8txyye600zpmV5ePq9EcTuqc3lf7bRvmSHrn5uDC0uFIjS98DF50eyqOHVOR+NaP3Ft
	2jBMqFNJoaIRUk3pji2PDOwClzXmznnuaXEkrQ/mEAubhQ/e9q2DZAd3HNn341G4hSIDPQVLimrCw
	Z3g4ZfzehRKQnflvrtNr2A6FABB0lM9Np1Ov0mduCwpbPp+A36YTTFnGTPBjx3p/lR7vunNRfzK5O
	g7ahz4W2hyeOv9D5VO/9l15YyL6qPl/RhbGSuU3M8j3pVGLEMDOrHirqcXg3cOj10+auMFSt9rl+M
	VaPTRivOVroloQN7v5tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPD7X-0006bs-3r; Mon, 28 Oct 2019 22:04:15 +0000
Received: from mail-yw1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPD7N-0006bZ-Ra
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 22:04:07 +0000
Received: by mail-yw1-xc2b.google.com with SMTP id d192so4396458ywa.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 15:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=d++6LEsCeM++2zm04hjt0BFH67dvigfuOE89Q2QUyts=;
 b=ZlP83ers+uDYBJbpdpz9njnILnnmUtQilAgh2u+j0fEersZLan2EbvNB9T1D5wziQ0
 siP4e0VSF8ayIYwXjyay/iISeCgRLlelK4xa6E7gbNeTI9yCwuPyaGaKhe3B4AjgZvDX
 6tyhbL8qEmaQ/3TFH/5cfY8hUPFdgdl+kfeO8C1xncFGYBVbZ7Cb7/GHD0NOU8MJB4LU
 X7NUOsRQ/WbyATslVs174Bf6TnctDHRYY1hUYusN3R5hpj5F7at4t+20YlX1WADg2K/Q
 uUTwrJNEH+2rL3DUUUFE/X5ka3fMaudiaG8ZnzyOFkd2/jNNQ1AHFIxaWD2+L81Ks3bo
 WEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=d++6LEsCeM++2zm04hjt0BFH67dvigfuOE89Q2QUyts=;
 b=t/1dvh+Qwz1SiaViFwh94aArf3dRGX8oVN8t9NKEKE8r2AmirN0h0r0QdObPivZz+S
 7T46zLAM5UrKzkW7HQZzm5x1swjI4zNjJWIxRkezjwC4f7T3u6Et4TKQqOWz3HTued25
 qwCmUyWL+2LI5XrUMiGNY64wAhh9OUEfzOMl5PgJ7OJNjPMxKfYhWc7LTJ9iuMGFpVfb
 UeOhw1rEkABTFiiBwDTj0bI0lPA6PIdmIhxRGCTZQEBGFuF7TenxGR067yYgQ3btGZRk
 9A3sxQSyGcQneuohqPWc72XDibrlO29UxqmdbC7KpxKlXTn9lIzGl64b9Gd2x4qbKj4H
 L3Ug==
X-Gm-Message-State: APjAAAURRa8ZuJfmNbCamSlmMNEBs1FIwvHx3xCa/X3UcirVvnZxJ0/2
 RWR13TR/BCee/iVVEHHNXXfYNampZIi+/bE8K30DJLK8
X-Google-Smtp-Source: APXvYqzb9EkeaoOS9P0fCYbewQFwpS6pZFuv79xDl7SF7cM1knoKhbL8OOmlczPTXfr4kwKXzQBPTaz2CKFDW5JJ5HU=
X-Received: by 2002:a81:6282:: with SMTP id
 w124mr14664656ywb.263.1572300244689; 
 Mon, 28 Oct 2019 15:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <EFB73C49-4DE9-4DF7-93FF-72318E9C4526@temperednetworks.com>
 <CACna6rz3TqbmX+7mmyfNM=VmW8DTJhyhAuPMY8+iL3+-uwpS7Q@mail.gmail.com>
 <FC1EE460-4235-4BC6-8F62-81B04B42D4D8@temperednetworks.com>
In-Reply-To: <FC1EE460-4235-4BC6-8F62-81B04B42D4D8@temperednetworks.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 28 Oct 2019 23:03:53 +0100
Message-ID: <CACna6rw9dLajO5ABLvTnBOAFtjkRmm8xOryc7tpVWLnDDnM5pw@mail.gmail.com>
To: Dustin Lundquist <D.Lundquist@temperednetworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_150405_917170_0A50094D 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH,
 v2] procd sysupgrade: close input side of pipe before reading
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCAyOCBPY3QgMjAxOSBhdCAxNzo1MiwgRHVzdGluIEx1bmRxdWlzdAo8RC5MdW5kcXVp
c3RAdGVtcGVyZWRuZXR3b3Jrcy5jb20+IHdyb3RlOgo+ID4gT24gT2N0IDI3LCAyMDE5LCBhdCA2
OjQ0IEFNLCBSYWZhxYIgTWnFgmVja2kgPHphamVjNUBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+
IFlvdSBhbHNvIG5lZWQgdG8gZHJvcCBjbG9zZShmZHNbMV0pOyB0aGF0IGlzIHBsYWNlZCBpbnNp
ZGUgdGhlICJpZgo+ID4gKCF0b2spIiBibG9jay4KPgo+Cj4gV2hlbiAvdXNyL2xpYmV4ZWMvdmFs
aWRhdGVfZmlybXdhcmVfaW1hZ2UgaXMgbm90IHByZXNlbnQgb24gdGhlIHN5c3RlbQo+IHByb2Nk
IHdpbGwgaGFuZyBpbmRlZmluaXRlbHkgb24gdGhlIHJlYWQoKSBzaW5jZSB0aGUgaW5wdXQgc2lk
ZSBvZiB0aGUKPiBwaXBlIGlzIHN0aWxsIG9wZW4uCj4KPiBBbHNvIGZpeCBwaXBlIGZpbGUgZGVz
Y3JpcHRvciBsZWFrIHdoZW4gZm9yaygpIGZhaWxzLgo+Cj4gU2lnbmVkLW9mZi1ieTogRHVzdGlu
IEx1bmRxdWlzdCA8ZC5sdW5kcXVpc3RAdGVtcGVyZWRuZXR3b3Jrcy5jb20+CgpUaGFua3MhCgpB
Y2tlZC1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
