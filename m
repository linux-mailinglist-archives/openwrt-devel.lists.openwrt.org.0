Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57EF3CF0C
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 16:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7N6RX3WX4MS3OJJiqkzg/UyB8lJW5ecpWPk8At1Tgs=; b=gyw1VtwWC3k/A1
	qfDG//EeJ1AEmZA4Ea9wQgRFqB5vcoyQHXeH+wjwEflHNFJWlxfPs+v/rExtJE74sqygXqH+NTcCJ
	RJnXl6MhizWyahng4L+NSVdLJFr4EKOk9QQOtsH2vBBpZsoPqpGaF/I42+MH0PIIYZlyCexL9qKN4
	LVzdfIHCZLkzXs/svnFgiwYwUWmMNPt9j5GDZJHkGQpCS2DZrVwxaRWyZkA8KMmuwJxlPms7r74Zr
	QBKfoWd6r1taEaCsIaeSVbiYZDejxYET0EtSrP6BUDYaH6BZ/ajsTKZFn9KYAoN+5Baec0Clvi/R7
	EZ1260etAYrYXSMKy+Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahx6-00057y-7j; Tue, 11 Jun 2019 14:40:44 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahwo-00057V-2Q
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 14:40:27 +0000
Received: by mail-lj1-x234.google.com with SMTP id x25so7298319ljh.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 07:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aemauKEBBDCGNPSvD0dc5/RogyAC4KMMEiFZRocQhPk=;
 b=AHsjpLuKc/Pzuq33j9kwA1ipOuiFCUQ1EMHa/QCKI7yiguoDkOlqLHhcIEQYf6/izF
 ebOMvIu15ANEVm/kc1gl6jJbI1SYPgeSwqhWHeT+Lw3pXFbRshWCJsadQ9KKkqnUPyAo
 29mCXJsBIGL6ZZKxXCc+g8g4V2mRlc2JT+sB3O+OL5bnvmxjGM2wPFDrOSWCPiTaSGPB
 cKmZbiA13qisvi5i8ilaYReLtJJjIwLPynhA50kEkYqcQ6jdj9Ik9Kt5CBcq61dvGSVE
 sG3K0AIkmeF+3zS2tQk9NNAZCTNpW+DdQQdKXs7g6okQftxZI8OP2NuzL2KbqJoYXiXR
 jqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aemauKEBBDCGNPSvD0dc5/RogyAC4KMMEiFZRocQhPk=;
 b=NO9hRSz3+uk5GXC9y3TfS8xOyvxYLjOPBqAhbt42kZx6EA473im/L6+UF/dPOTMLoX
 Sa8aYh9kjnS9Np3HnP3yPRAp0rixgYJCZWO9bz5Qh6T8hi7eEo5r2oZ2rHvUwhoT/zXB
 g1ZukIwjqrTWGXgUB/h5dkBxI2m83y058rLakkTQIN3MLGV/QsRWZWt2443rCkDeobd7
 LFiXnVmNwO6jnF4xPPzVFEWny4x5p8ynqwY+DKRp0d5UtHx5pv/hgGG8MdseUVVZrR0p
 a2yTrYeiNU/MXM5qsXjHKBCaKXInEHTvy0URJckGF/m2UpC5roq00KmIyLPTSxKCh4vv
 //AA==
X-Gm-Message-State: APjAAAXH4/PPV/5/CJFFi8QKR5vTcKyrau29Bm6AIVcwqdahQStSsQl/
 h7PDi4gEZs7gocH16zitShGHRNxDMIoy/nsJiSWLlw==
X-Google-Smtp-Source: APXvYqx35VpzwdO9kFD7HfMKzQY1vXcuGvzYOSM4bqmWDdiGpU2zPu2MX72DAjR3QiR/pufggYi0nUKDilGF2z7aWR4=
X-Received: by 2002:a2e:5d54:: with SMTP id r81mr2852491ljb.104.1560264023421; 
 Tue, 11 Jun 2019 07:40:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190524212719.30694-1-linus.walleij@linaro.org>
 <2143459.csVk10Y2R9@debian64>
In-Reply-To: <2143459.csVk10Y2R9@debian64>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Jun 2019 16:40:12 +0200
Message-ID: <CACRpkdag__7EeFKq=FJOFfJ+HQFi2qvW1UijEVkCyBiGj_-AAQ@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_074026_120845_CFDCB065 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] gemini: Make a per-board case for
 ethernet MAC
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Christian,

I worked in all the changes you requested until I got to this:

On Thu, May 30, 2019 at 12:46 AM Christian Lamparter <chunkeey@gmail.com> wrote:

> > +                             ifconfig eth0 hw ether $MAC1 2>/dev/null
>
> I guess while we are at it, why not change it to
> "ip link set dev eth0 address $MAC1"

Testing this:

ip link set eth0 address 00:50:c2:11:11:11
ip: socket(AF_PACKET,2,0): Address family not supported by protocol

Any hints? According to the help it should work ...

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
