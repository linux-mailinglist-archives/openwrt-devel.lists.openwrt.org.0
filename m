Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E031916F133
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 22:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZzzr4HQhsCs45yQ2Dl6ivdy+GU3goOq/m4jsVKU1u0=; b=tlrcQXrk+Q7Fhl
	BE6AMy2PjjR1DixZ+0i5Nasmzzw0f6yHWMq8mVW/7WgnhKsgVUDOKFr3B6F4gZu8M0nvPMxDZqxAT
	OpVr8WDvXNJ10U6i4c2TXy1s/P24LZL/x/ubAQD/So40qfOcrxpM9DHh6OTTDu0eEbOQ7LtQHuBNL
	qiimn3oLuBDFHfjyqnf4mToBy9g+3V4P9FcePVZqFcotJKGPkO6wpq1Na9Phv3nz9pV5O0RoXRy1F
	OA2IqmzlSXKdqs7uUF3DNzoVIL3cbDFzHAEMtMamIaffA3CMhdxmmi1jYD8IhqklYsGLmj8t2TVz3
	m//6tIsrz7NGCNm23wgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hrS-0003K6-5z; Tue, 25 Feb 2020 21:35:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hrK-0003Ji-Ga
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 21:35:19 +0000
Received: by mail-oi1-x244.google.com with SMTP id p125so810731oif.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Feb 2020 13:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=p0p9NWOFEJpDtGlyypclsKBnqEF/8NO5o8DBEmewFKw=;
 b=ohcSfHOFbZO02pEsjYLSgRpoGRpsXkljVkUzxpZETJ34rF3soKh52/VSZfI4GWA9zC
 SW2PUOEr1vrrHZDEwV+/nuvdnId+nMtxlrmOCRz8id6NTQ2khrspWeRTKCPg9LmdCKea
 JmXmClCZkPW9GLbg62V8tL2SkGd7H9UIMTid0mddYO3RsOSoOdO5N0Yl0I0sU5pCjIm+
 R1lueDLRc9M6pop92WmNiSWV96TXA2gxjEhWLshf0XhkKpWlDlPSQpgHLpooTpBfFjQ/
 eJHvLZC9Mvvjd+oQfWcbMnDI6Y6gAriqmcLr/w/51v7jA/yfCqn4DfW9a8QpSn4p9V7/
 XZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=p0p9NWOFEJpDtGlyypclsKBnqEF/8NO5o8DBEmewFKw=;
 b=g4OqNT76Wkog/9RmhnxDZUDQioqR5cYJ2wCYhS1VpmLmZwd4XmUAb5DaOgZbslH3RJ
 ZKqwYViJtI6ePYbzGFl9fAuSKkk5Cmj+ZNOFOyDoeLT1YxuwrZANjt2T2r+qTjObKtw4
 xT0a0trm87wrHumGTulzfBoxKNd2EHEz/b3/e2F/3Ee7L9zbFyL7s4xbmADKmzaUM5ze
 /ht4ew+lKwD8csObBrk47EmDROIXTHb94z5t5qXp2JNDylKa6c/DbgfbL/LwViaQ7+1O
 cjDl/SBVW1fjXFF13ZqVVHNbnM/YMikKsiRBSm4xgJX81jF6T2ZBvOZ+9BGu/rOmYunG
 6jiQ==
X-Gm-Message-State: APjAAAVfkhMAp82F9BfahjbaBMVydJrOy/nUgQ9nPyBCfvhwWK6sRWPA
 0p7KiP8fDCfny9NFfuAnZBhZbTcd3Yi3VCqVJcE=
X-Google-Smtp-Source: APXvYqyXUGHpH3crWusLyUIvia8QwhFEFQaGU+kuZBvdEZ+zj3+pOevfQQWnEg5a9Vqn7dObBY67uWCdVkXTfkk5z/A=
X-Received: by 2002:aca:b70a:: with SMTP id h10mr810748oif.20.1582666517441;
 Tue, 25 Feb 2020 13:35:17 -0800 (PST)
MIME-Version: 1.0
References: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
 <ADB10B7B-F636-40FA-97CF-C64BDA539ED1@gmail.com>
 <e60f9999-5763-e992-f169-5ca369da01e6@gmail.com>
In-Reply-To: <e60f9999-5763-e992-f169-5ca369da01e6@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 25 Feb 2020 13:35:06 -0800
Message-ID: <CAKxU2N_D7Kd5UE-U59okkM86BRWeEQJXrN4bFRgGCReJj7Kgfg@mail.gmail.com>
To: e9hack <e9hack@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_133518_579408_832E182A 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jan.pavlinec@nic.cz,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMTI6MjggUE0gZTloYWNrIDxlOWhhY2tAZ21haWwuY29t
PiB3cm90ZToKPgo+IEFtIDE1LjAyLjIwMjAgdW0gMTE6MTggc2NocmllYiBSb3NlbiBQZW5ldjoK
PiA+IEl04oCZcyB0aGUgcGlkZmlsZSBwcm9mcyBwYXJhbWV0ZXIgdGhhdOKAmXMgYnJlYWtpbmcg
dGhpbmdzLgo+Cj4gWW91ciBmaXggZG9lc24ndCBzb2x2ZSB0aGUgaXNzdWUuCj4KPiBjb21taXQg
IGFjYWJiMmNmNTA3MjZjY2FmYzNjYjQ0YWFiNDMwNzQ0MGIyMDM1YTQKPiB0b3I6IGZpeCBpbml0
IHNjcmlwdHMKPgo+IFRvciBpc24ndCBhYmxlIHRvIGNyZWF0ZSB0aGUgcGlkIGZpbGUgYW5kIHRl
cm1pbmF0ZXMuIFRoZSByZWxvYWQgZnVuY3Rpb24gZG9lcyBhbHNvIG5vdCB3b3JrLiBUaGlzIGRv
ZXMgZml4IHRoZSBpc3N1ZXM6Cj4KPiBkaWZmIC0tZ2l0IGEvbmV0L3Rvci9maWxlcy90b3IuaW5p
dCBiL25ldC90b3IvZmlsZXMvdG9yLmluaXQKPiBpbmRleCAxNDJlMjUxMmQuLmRjNGVhOWQ2MyAx
MDA2NDQKPiAtLS0gYS9uZXQvdG9yL2ZpbGVzL3Rvci5pbml0Cj4gKysrIGIvbmV0L3Rvci9maWxl
cy90b3IuaW5pdAo+IEBAIC0zMiwxMCArMzIsMTMgQEAgZ2VuZXJhdGVfY29uZigpIHsKPiAgfQo+
Cj4gIHJlbG9hZF9zZXJ2aWNlKCkgewo+IC0gICAgICAgcHJvY2Rfc2VuZF9zaWduYWwgL3Vzci9z
YmluL3Rvcgo+ICsgICAgICAgcHJvY2Rfc2VuZF9zaWduYWwgdG9yCj4gIH0KPgo+ICBzdGFydF9z
ZXJ2aWNlKCkgewo+ICsgICAgICAgdG91Y2ggL3Zhci9ydW4vdG9yLnBpZAo+ICsgICAgICAgY2hv
d24gdG9yOnRvciAvdmFyL3J1bi90b3IucGlkCj4gKwo+ICAgICAgICAgbWtkaXIgLW0gMDcwMCAt
cCAvdmFyL2xpYi90b3IKPiAgICAgICAgIGNob3duIC1SIHRvcjp0b3IgL3Zhci9saWIvdG9yCj4K
V2VpcmQuIENhbiB5b3UgbWFrZSBhIHB1bGwgcmVxdWVzdCBpbiB0aGUgcGFja2FnZXMgZmVlZD8K
PiBSZWdhcmRzLAo+IEhhcnRtdXQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
