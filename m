Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6C813B8C1
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 06:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbnpC+ySZt0cd3gIcFn1WxjCJ/CxFxDC0FIKPQud1fM=; b=bxE8A6d2ZW4c1A
	XzuZAL1J8gxvdBEejd/KeXxy2ZEBq41frGTGLw8IQe+zf+ONOeE6FnVmljtUASkZ8uo/FhseLzYv+
	eofRTjBsGLL69O0gEOePQxOQLbNjraE5D0QqHiWicCI2x5ql/Z2PTG/BUzlwWp/D7ex24pOP2H/xK
	f2WSQzcJQU3HZ6XaGbvzpF/BDeZP46wgaCgOuPfi1Xv2PR+RNZR8dbigBgEUL4st1kOnU5ZG+EVdx
	N60W/An4ajn4itvWBcKgsCzu9EzP5VSunDVcyJ/c+SxSAWJfC4dbPD1LEErgk2R0Kf7rV6UnzWFif
	MoiNd/OK+1rGbN8K/Kmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iranA-00060f-Hz; Wed, 15 Jan 2020 05:00:32 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iramx-0005yO-NC; Wed, 15 Jan 2020 05:00:23 +0000
Received: by mail-pj1-x102a.google.com with SMTP id l35so7121082pje.3;
 Tue, 14 Jan 2020 21:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SAeZGG8YuqEdeURGFs8gD3IzCE9dEXxvR5uvkpQZEoY=;
 b=aVvBNV8ZIz66EVREkgL83v7hYZ8nP5zYqxTG4xW2DoFbokX/CQB7d6vMCPEUpgaXfd
 PHRquATxh4r4ReLdY3HIKv/3UkNqef11B6kxpFUKH5+vvcO5Ui0jRUf2TYPvW9+5PuAb
 dg7fdG0lrFNUDIGaRn2ZiJximCaV83i89YDxwK/bNO3O+BHYggUY6CRLPtn4tmxCdmU6
 VeP+9Ckd88r/u25of9MB03LnTrNwzH8XtB5u3aiK2SwR2wvwgaIC2yNkD0AqaFs3hDlB
 4Wa5Arhrl4sS0Qv4ZNXU47+BRngfoLy5fMPkyJTjG7gvHXlhroGVEfEThhXckUaNrzFH
 2jNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SAeZGG8YuqEdeURGFs8gD3IzCE9dEXxvR5uvkpQZEoY=;
 b=MwwA2/t6ShJ6wEkt8UoNmB3RQkWlWkJMmhpeJvzQmK68h0qwwNVMOmmQHMUijoPj6m
 4xAZfJuGxA6npMwPUrOHv1OJzJMiUu9TVwwg3XNGpigf2LkI/IwScgJ1GDaYQmhbsBLU
 XqJR9Oop+v9SsLJrLFsDPAa/gLbXtLGP2B09Yq5GtMKOr927/FB/sivvJPXFMj1oiQAi
 5FyOx/JcHPOwcgxDHxqEVby4YoXys0JwnRSRmmP728Ks1CVSW8MTnMR9n/KTWTcUeSTN
 94gZ7smJzC87iZIYDJDE0E7L9Ctk7oeJ3mLxmJEielioeQZjtoOdJvlf3A6JUabBeoOJ
 hBow==
X-Gm-Message-State: APjAAAXTFk99sMlmsXl4MSarVzah29GZPe2JOppv8qoGZ0UwsXKopKA3
 dluRsjZb81NGeA89P+5/Q/KLZLVbXio=
X-Google-Smtp-Source: APXvYqzzhtUclaaTmfBiXgYs4SqJO84uOajhryGaOiWQXTYDVSr9uaYTWum1CcUqDRlOBluWOSStsQ==
X-Received: by 2002:a17:902:8545:: with SMTP id
 d5mr28893802plo.116.1579064416222; 
 Tue, 14 Jan 2020 21:00:16 -0800 (PST)
Received: from [192.168.216.107] ([122.161.34.243])
 by smtp.gmail.com with ESMTPSA id g21sm20346285pfo.126.2020.01.14.21.00.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jan 2020 21:00:15 -0800 (PST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Paul Spooren <mail@aparcar.org>
References: <20200108214728.GA8104@meh.true.cz>
 <20200114112733.GA25921@meh.true.cz>
From: Nishant Sharma <codemarauder@gmail.com>
Message-ID: <2bfd43ad-cde5-5697-d3f3-54cb826e0ae4@gmail.com>
Date: Wed, 15 Jan 2020 10:30:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200114112733.GA25921@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_210019_784387_60186875 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codemarauder[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] New OpenWrt logo proposal [Was: Re: [RFC]new
 "corporate identity" for OpenWrt & static rendering]
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
Cc: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 Adriel Omboy <adingph@gmail.com>, openwrt-devel@lists.openwrt.org,
 m.camargomoreira@gmail.com, Thomas Endt <tmo26@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCk9uIDE0LzAxLzIwIDQ6NTcgUE0sIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMjAtMDEtMDggMjI6NDc6MjhdOgo+IAo+IDEu
IGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9oZWxwLXByZS1zZWxlY3QtbmV3LW9wZW53cnQt
cHJvamVjdC1sb2dvLWluLXRoZS1wb2xsLzUyNjc0CgpBbGwgb2YgdGhlbSBhcmUgbmljZSBhbmQg
SSBoYXZlIHZvdGVkIGZvciB0aGUgb25lIEkgbGlrZWQuIEkgaGF2ZSBhCnRob3VnaHQgaGVyZS4K
CkFzIGZhciBhcyBJIHNlZSBhbmQgdXNlLCBPcGVuV3J0IGRvZXNuJ3Qgc3RhbmQganVzdCBmb3Ig
d2lyZWxlc3MKZnJlZWRvbSwgdGhvdWdoIHRoYXQncyB0aGUgbW9zdCBwb3B1bGFyIHVzZSBjYXNl
LiBJdCBpcyBiZWluZyB1c2VkIGFzIGEKYmFzZSBmb3IgdmFyaW91cyBmdW5jdGlvbnMgcmVsYXRl
ZCBidXQgbm90IGxpbWl0ZWQgdG8gbWVzaGluZywgcm91dGluZywKbmV0d29yayBzZWN1cml0eSwg
SW9UIGFuZCBhbnl0aGluZyBvciBldmVyeXRoaW5nIHRoYXQgb25lIGNhbiBpbWFnaW5lIG9yCmlt
cGxlbWVudCB3aXRoIGFkZGl0aW9uYWwgcGFja2FnZXMuIEl0IGdpdmVzIHVzIHN1Y2ggYSAiZnJl
ZWRvbSIgYW5kCmhlbHBzIHVzIHByb3RlY3Qgb3VyICJwcml2YWN5Ii4KClRoZSBsb2dvICJIIiBy
ZXByZXNlbnRzIHRoZSB2ZXJzYXRpbGl0eSwgYnV0IG1pc3NlcyB0aGUgd2lyZWxlc3MuCgpSZWdh
cmRzLApOaXNoYW50CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
