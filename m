Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7050F157F24
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 16:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j70bQnDswTtc/xXc5ZIxIhQC3fjnv1GQ8GEDo0Wc6Qs=; b=aptpaVO3X3u2VN
	bUrPmaojnovc4jSYyAAM/4EAJs93t9ZS3RJn/3uAE8ofm+4FbPzEfhF7Sons3SiLXMjJhshGcq+qT
	e875ugFZ6GROfcq/28qCqw7sdz5rhMY8e3s0VPSw5bKaTvhc3NgIyKlPvrP9KedWTqbn3Ym0ktwN3
	2dhAQ7LWAEyinTQKK2g2bGNK127Iv3/qq7In6avFAaNqXyigcEaLaNI5sXk/pxf6g+ZfxTd/XgnBa
	ZWtDFyTYasiEdgtixb32n4HyBQIIGCvjnj5q3JPX7BnvD5bl58kHQEH93MfRIRL461eKH1s27vIht
	P3GvCjfJo1mYv5F9YV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1BH8-0007lb-Os; Mon, 10 Feb 2020 15:47:06 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BGy-0007kU-37
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 15:46:57 +0000
Received: by mail-vs1-xe42.google.com with SMTP id t12so4383152vso.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 07:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=65GE2gex5InuZ/LyQU7oWC3SM2BXTUj0zzj/A1sfHiI=;
 b=N26lQ1nv7cnOnLtZgN/QKE0TSqDvqlyMgaUSynVztjAJ6qBRkuWc3bz/AICYHXWAUj
 lnR90aIBNrxQyIGdCMxXjNWM2Rtf0P1Thr5/Cz/wJbGtc/cHoRRuiAeDmX2dKlO1RON+
 49cpcLoOmF8ES5VxV4PuBARrcSV+vvTJNNlIT19mbSC9U4iZCxtAaDca6a6U5iaHvll8
 LpW1fbM03Ml9aEIEk5G2pXaD5WEvbGe5kUecYPFw1SRJitoCTLrdEoxL2MIMvpDDmICC
 1W5u6PowNzVMWwU15eP0wZgm1uRXT3pLkC74wwQvIwS4n2SY66PA5kBGEj8nTTtNas/h
 UkRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=65GE2gex5InuZ/LyQU7oWC3SM2BXTUj0zzj/A1sfHiI=;
 b=qX6z6fcL9pBOY/qt8X0OwjMGVSRmlL+YQ/WAO9fndbXKa4fJq7E10QRG64wiJMTXUl
 mnmw54baojOIyO4Z2bF83CGiOiPLGcaoKaWeeOi4YrUunNsNklGQ7vin23bn685nN/Cq
 gBeqEm11MKaqGEFuwFTknHfABcU+Snw8qz/Rme58fT2PAelwO49fr71/xXd4dYCRdmie
 cRqV/CteVvC81Zf+El25cw/cJuY0gjQm9st3iPhybxwymn7/XpLfREX+vQ10uUgwscO5
 I9G2Zty8GpHZXNf+Nvv4NI0fW+FC2EdBOA8zpV4kfEFCR9nO2FCzUEkII/Gm3QuxcvaQ
 9O2A==
X-Gm-Message-State: APjAAAUkUWrHtrBtI7PpeSktZ77sNHAAUy5TXsYsl5NqcdAdr8o4Ppi+
 aW7Z5LvYOczr+8l6ibwbVqNOxn8jydzySVauhY5gw5o=
X-Google-Smtp-Source: APXvYqyrBFAwh7aoLLFvh5s03FGknSWzOKzZMDxzGCKcFyt3FXa/r5GjCBXXXnOhqF+d8mOb62tp72dNoLyC8zO1Kac=
X-Received: by 2002:a05:6102:2374:: with SMTP id
 o20mr6932061vsa.45.1581349614799; 
 Mon, 10 Feb 2020 07:46:54 -0800 (PST)
MIME-Version: 1.0
References: <20200130200345.31741-1-rsalvaterra@gmail.com>
 <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
 <CALjTZvZwq6AeTSYT700vw8y4N-N3h489d47n-VLyfEXTdpuv-A@mail.gmail.com>
 <9074b381-ca1c-1b47-f427-68f616ef1321@nbd.name>
In-Reply-To: <9074b381-ca1c-1b47-f427-68f616ef1321@nbd.name>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Mon, 10 Feb 2020 15:46:43 +0000
Message-ID: <CALjTZvYoE-ojg8RGTgUr9UbyHEmxF0D-y2JrxTrRenAVJpfPTQ@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_074656_137432_C6267CEC 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC/RFT PATCH] ath9k: implement kthread
 entropy collection for AR5008 and AR9002 PHYs.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi again, Felix,

On Mon, 10 Feb 2020 at 13:37, Felix Fietkau <nbd@nbd.name> wrote:
> The issues that were reported years ago were mainly stuck beacons,
> increase in hardware resets, connection stability issues.

Thanks for the info, I'll keep an eye out for those. The dmesg is
clean, I haven't enabled any debugging, but I'll do so for further
testing.
As an aside, this WZR-HP-AG300H is running as an AP, at a public
institution, with 12 STAs connected, at the moment (8 at 2,4 GHz, 4 at
5 GHz), without any reported issues.

Thanks,
Rui

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
