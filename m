Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436171426DF
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 10:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SL6oTZ2ucxI8l44Y7tGpuE1jLGQGrl24H4bPpz6cyz8=; b=A8luUNx+7dC0oF2eDXQm4rt0O
	dPUyvo5ASll29oYlyri3lS3Y8KkIbZpfAtysNflWcwYdLeqgWwZLhEFwmx/bkRXbILuRe523jHLXt
	szdW1xmFsA3U5yaAeloQSjcQFzk/EBII4d4oHYK3s0TyZPcbd0ljcIh81esmFLZpCp6YDFfJ5Q2Kt
	mDTkW//6at72eVmUrDp+P8jU5FJA4M+g3YI/BX2mGvFY95ULQ+pyWjOQGX9CrtI1BIDgs4kbn7Fvf
	Da5jKtIG3l0rXNYbH+byXAE/jwpJ4FZGM5TD8qir6E3l28VwklxuOEBx/r1wZXKkVWJK6CoySsfbZ
	u0IPNpz4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itTBO-0005OZ-BV; Mon, 20 Jan 2020 09:17:18 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itTBB-0005Nn-TV
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 09:17:10 +0000
Received: by mail-wm1-x329.google.com with SMTP id u2so13864499wmc.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Jan 2020 01:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=nsSyChLi8LjiUWqVWbvgM5VYPnrpQlBkmZSxeHYJOos=;
 b=nG/ftK6Uh0FqCxwd++NXzTU6eZtT3iPcyGgNnZUdhrG0uQYz1TFUfiwGENLBf/UnZj
 N6KppRpmB0HwHXp/GkCXqSEhu6Xzme5+7rxdbrNqhYjsqtJqFzH6UKNIhn7OcRbjUMDu
 MxPDM/YNYH+8YjXCLcJxbklLvfu/g8ehsNn0EunUCET0QiCizquQJkJnvcroV0g6UOxK
 IPERaWGQ9Wx3m8rldj44wlK96KaiklRO1KHxpQ5nX3gCm01VQHHWlk2qiIkWHJFvQDz7
 XzUwnBmCJWbfnyutOjnftBHWY9kuAnXnqK2VLg6s6COqw26LDRZmLcq/ffvRm4L8lnUn
 yAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nsSyChLi8LjiUWqVWbvgM5VYPnrpQlBkmZSxeHYJOos=;
 b=R0Oxt1eqHOPNwWc6m5Mlk1Vv1Bw+SRBHB+yU0XY2Douh+KsrgAaJX/oORFmEF5YNai
 1jWHPtiSlnosXieJcKYeqW3pLcxpRBOkRit4Sa4bC5EGNHc6z67IHQGspoY5vnxQ2XW0
 /gH8t6qB2/VwE10lMWBHXoal3TZdtE+x5Umyodqzq9T7s8kNhmGldl3+2Z2OhiWsMFoF
 lOOfgYFrmJdPSpZP3vdFUoYSgtzkc+FLjBDi5HY5LE+Qw3DdF7/NQ6L/kt5QXrVWKBjc
 aG/8qrbdMVrXv0vlYfdhCqrDlzU+4QsLXrx+z1TaDyTp1Q8mNg0aKjZAtOJn5H88Y6Dz
 Rq9Q==
X-Gm-Message-State: APjAAAWB5b8OZ7Wwu8PW6Qm7aEhCBGTCWAtF2NPbqmUR/Ykvg6MGZTXC
 B4XK+IcCqjamEBvBwa4a7sogrKUmW/s=
X-Google-Smtp-Source: APXvYqzROqJShKAdbzLyUWQQuwMPBGZcui/ZJR/y0K4y0Pgjw+WOXgHNbJYMAAMRtTeBaHKhuam5tA==
X-Received: by 2002:a1c:3dc3:: with SMTP id k186mr18490737wma.95.1579511822884; 
 Mon, 20 Jan 2020 01:17:02 -0800 (PST)
Received: from [192.168.111.139] ([151.67.49.71])
 by smtp.gmail.com with ESMTPSA id a184sm2950767wmf.29.2020.01.20.01.17.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2020 01:17:02 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <20200116100514.GB84286@meh.true.cz>
 <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
 <20200120090108.GD69327@meh.true.cz>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <e83ea5b1-2d3c-42ad-ebd2-eeae24507766@gmail.com>
Date: Mon, 20 Jan 2020 10:17:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200120090108.GD69327@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_011705_977894_3DE9DB94 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Releases [Was: Re: OpenWrt 20.X release plans]
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

Ck9uIDIwLzAxLzIwIDEwOjAxLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IEhhdWtlIE1laHJ0ZW5z
IDxoYXVrZUBoYXVrZS1tLmRlPiBbMjAyMC0wMS0xOSAxODoxNzoxMF06Cj4KPiBIaSwKPgo+PiBE
b2VzIHNvbWVvbmUgZWxzZSBvdGhlciB0aGFuIGpvdyBrbm93IGhvdyB0byBzZXR1cCBidWlsdCBi
b3QgZm9yIGEgbmV3Cj4+IGJyYW5jaD8gSXMgdGhpcyBkb2N1bWVudGVkIHNvbWV3aGVyZT8KPiBJ
dCBzaG91bGQgYmUgZG9jdW1lbnRlZCBhbmQgYXQgbGVhc3QgMyBwZXJzb25zIHNob3VsZCBiZSBh
YmxlIChhbmQgd2lsbGluZykgdG8KPiBkbyB0aGF0Lgo+CgpUaGVyZSBpcyBkb2N1bWVudGF0aW9u
IG9uIG1ha2luZyBuZXcgcmVsZWFzZXMgaW4gdGhlIHdpa2kvc2l0ZQoobW9zdCBpbnN0cnVjdGlv
bnMgYXJlIGluICJ0YWcgbmV3IHZlcnNpb24iIGFuZCAiYnVpbGQgcmVsZWFzZSBpbWFnZXMiKQoK
aHR0cHM6Ly9vcGVud3J0Lm9yZy9kb2NzL2d1aWRlLWRldmVsb3Blci9yZWxlYXNlcy9yZWxlYXNl
LXByb2Nlc3MKCkkgZG9uJ3Qga25vdyBob3cgY29ycmVjdCBpdCBpcywgaWYgc29tZW9uZSBvZiB5
b3UgY29yZSBkZXZlbG9wZXJzCndhbnQgdG8gaW50ZWdyYXRlIGl0IHdpdGggYmV0dGVyIGluZm8s
IHBsZWFzZSBkbyBzby4KCgotQWxiZXJ0bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
