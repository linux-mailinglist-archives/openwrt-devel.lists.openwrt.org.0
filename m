Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5422A15FD69
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 08:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGOmk4igXNDujItiRka8lXugTCh2gawn/wHHXxwykP8=; b=aY36fBOyeBFrWe
	p3x0UItXzd7VBWUhHhmep22WC1VGl//mHXU7NEFyHqalkezzYjBcqZHROkcszl1AoJ+d9S7ufe5FD
	1ehZPTGMpSDNW1s+wa3fpIWhoxgIsIeJPvvyzVp+S9RR2oFz8Cez68jK1fWcULysCpMLkuOq9OazM
	/LBSGLaXE04zEkFdwGUPuUOZ0tjnThL931I1qEEaSF503P8tOfB2VzKw95/ifq+k2nFp6f/2X6xg8
	4Xfs24aM2QQSv1eQIloTmVb6FzvpN1qqV2ua2ImC8O7A6Ov0deZGuhMJJHSHOxj7wL2UFXfG//2fA
	EYYGjpqFJZBlo2nX1R+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2sFH-00079U-3b; Sat, 15 Feb 2020 07:52:11 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2sF8-000793-6K
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 07:52:03 +0000
Received: by mail-wr1-x433.google.com with SMTP id t3so13560531wru.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Feb 2020 23:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:to:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rhxfbQ76nmTcjfu9wD+EqPj5Z5M1fuqPP6eZ20aknDM=;
 b=L79AMIBn3g7LehQnYGMgHiIDyvtrovFkB6yYM6YqL8bgSI1+K/mhDhwBfhpFLARUA5
 SBo/x2RXu9ZOhOIyypZ3jdk8ACzZF81Xk7gULJbgBtHYZ8uHcFphMIgu0+Zn0YK7TOIW
 TwVXuNL9wXKmrsww53rUrhnxnuN0gD0VY9FuRGSysflMyOgh6yjAFd7zMe4/byyiWisb
 dhEYbHOFrz2Yx6w8S+4MTTuay9Xv/4gDWfIZXNeeL5+T3vd5FN6nMJ/IHauvtL8XWbcn
 B3ZsxMvwC+T9RhXmZgvOzJjXT9HW6bTWLdoWNONw7ni3VINfFMH7IRCfuyCIL1o8DGij
 uUzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:to:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rhxfbQ76nmTcjfu9wD+EqPj5Z5M1fuqPP6eZ20aknDM=;
 b=ApvyCTufslOxMaYHdDyu1E8gCzKgwBvIMrgv7NGt0WMhOX4Yarp2blfBYm7dEMxI30
 vEH+8U3jwRhP3aYIz7kxMUmCCSo9Rm/PxYLHeCW1xKL5ewM7Kl2a9jQXNmaBCtlhfG48
 BYwbczfOm1bSz2dlqQ9DsWs3rhSSm+yYzTMegHsAXwHe83dyyvbFL2R88W3tHvnQX31L
 EW+IlmTFzjMii82V5ATRbNjSFu4VgsAjm9x80hYak279kFrSQlFlWfO4zhyogtJWQ7tO
 cJkKpf2wHGHfkRF4eBauOwO54l8CNpElODWNBynyk1GRPgW2eC38Bx9EdCa+KWL1LJ6s
 L2ig==
X-Gm-Message-State: APjAAAVYcgNRYv07uv7Wl4py+590rv+MlQ2l7UbDtXMPnJlHorUR0Kin
 BOvWLLK7JrFZFCKOPDb44G0=
X-Google-Smtp-Source: APXvYqw6j3LcIMDDfkycdNENjr3IhhDd/5DKemkDIsi6f4DfGLtGaBt74KoaF//SsmAHo2g3K4n+jA==
X-Received: by 2002:adf:9c8c:: with SMTP id d12mr8645905wre.404.1581753120190; 
 Fri, 14 Feb 2020 23:52:00 -0800 (PST)
Received: from localhost
 (p200300F66718ABAC958C975FF2DF2488.dip0.t-ipconnect.de.
 [2003:f6:6718:abac:958c:975f:f2df:2488])
 by smtp.gmail.com with ESMTPSA id i16sm10389766wrr.71.2020.02.14.23.51.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 23:51:59 -0800 (PST)
References: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
 <20200215073151.GA13957@meh.true.cz>
To: openwrt-devel@lists.openwrt.org
From: e9hack <e9hack@gmail.com>
Message-ID: <3cbeebab-2a51-b7ea-4d31-77a5a4d46500@gmail.com>
Date: Sat, 15 Feb 2020 08:51:58 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <20200215073151.GA13957@meh.true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_235202_258777_15B78600 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jan.pavlinec@nic.cz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gMTUuMDIuMjAyMCB1bSAwODozMSBzY2hyaWViIFBldHIgxaB0ZXRpYXI6Cj4gZTloYWNrIDxl
OWhhY2tAZ21haWwuY29tPiBbMjAyMC0wMi0xNSAwODoyNDoyM106Cj4gCj4+IEZlYiAxNSAwODox
NzoyMC4wMDAgW3dhcm5dIFVuYWJsZSB0byBvcGVuICIvdmFyL3J1bi90b3IucGlkIiBmb3Igd3Jp
dGluZzogUGVybWlzc2lvbiBkZW5pZWQKPj4gRmViIDE1IDA4OjE3OjIwLjAwMCBbZXJyXSBVbmFi
bGUgdG8gd3JpdGUgUElERmlsZSAiL3Zhci9ydW4vdG9yLnBpZCIKPiAKPiBUaGlzIGlzIHByb2Jh
Ymx5IG5lZWRlZCBpbiB0aGUgaW5pdCBzY3JpcHQ6Cj4gCj4gIHByb2NkX3NldF9wYXJhbSB1c2Vy
IHRvcgo+IAoKSXQgZG9lc24ndCBoZWxwLCBiZWNhdXNlIHRoZSBnZW5lcmF0ZWQgcGlkIGZpbGUg
aGFzIHN0aWxsIGFzIG93bmVyIHJvb3QuCgpSZWdhcmRzLApIYXJ0bXV0CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
