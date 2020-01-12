Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D576C1388AC
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 00:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oCLFm0w1WWfgV3sollC53pEIMg+EW9+xq1hX787Rlkk=; b=rc2jhF6Bn7HEIwYgne3rsFPvk
	HDOn3gs678TEsh+JaPpOyb+SB9VMlCK2v8WpZ+aqqxnyHhFQRmjyugFqDfzijuochdAK2Mriy68T0
	5vU1JZo5+coNj3/mCfCbvEu40uWv+/JUGvSFyywa8yccsojnSblKjtQ02NrZ/7+RsDVJp42vWlbSD
	T29fdGK8K08JwDiI1BrYqMETBydX5DglTcxwRcdWKO8L4kxvaagmrVRfONPVwPNt2wmxAHJjGCP6I
	gnUy1p6nCRIeY/y3aWDkfJVOKCYNmaOvuPj9pdBp55T9En/XnLEwlbC2sNUeQIG4dhzP4m0GEuduW
	MtrUQy0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqmJ2-0005Ou-AZ; Sun, 12 Jan 2020 23:06:04 +0000
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
In-Reply-To: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
Date: Mon, 13 Jan 2020 00:05:44 +0100
To: Paul Spooren <mail@aparcar.org>
MIME-Version: 1.0
Message-ID: <mailman.23954.1578870359.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
Content-Type: multipart/mixed; boundary="===============8782809372851773356=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8782809372851773356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8782809372851773356==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqmIw-0005OG-0I
	for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 23:05:59 +0000
Received: by mail-ed1-x542.google.com with SMTP id l8so6894240edw.1
        for <openwrt-devel@lists.openwrt.org>; Sun, 12 Jan 2020 15:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CFSQ8SZ1m+p0udv/ET/wBVoAq2tD2c2fsAlnPGm8le0=;
        b=ukIIngnWPFCGAE2p8ik1iss70x7Ftzy4cxJ/z1WxCMjRwc0bS9nGdY76HEycDHk5aF
         oRHDL3EQCvnqG2txIClIdJ/4KJ+ZP+oOl4tspyKXVw/aFH9Hw2+h6DmNiascfmLNra7s
         7o71lwHYZh2ibv6fXjzGYNK8C9cvbk2p0dZKLHxCu4X33gy8yh97lropgO0MT4mBNurX
         bWAvkXBqx50UadahY4/FNfTC7rwiSLfbVkcpjEc+AkdJvnf2nbutVtN6tDlcKjK2mMSI
         4TfIcYpVRK4+RKSqKBxnEZ3aA+AIMfMyc9XG73b0pJ+v8ynLuvhtizk3KuwAvgqsb6iG
         yDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CFSQ8SZ1m+p0udv/ET/wBVoAq2tD2c2fsAlnPGm8le0=;
        b=L0XbriYdHahKW32HwQ4ic7gbyRXq8nz8LMUEG4AydcjWy9yDzeug/QrJEBWeayKl2n
         ZR/9XvUpl/7He0ZopxC81ZF/UyD4LurYfTsxIoZngYtGS2v2MBgxOamI3+3lJJY9hECy
         yaLJxS7EewLHwj3YUOAVo+Obm/SVoRXTIGRS+LQQSe88GJet6BEfCgIRZw3Sbl/qmvT2
         M/gFlbCrlSk9c2OUCM7h1hK+1BoeM6mucRBZnaE94E49W2YOlSuee9KlzyieYxjqzp0y
         HgcsOizTelq7rpnjTTZ/gGtSMii021LFjfvrp++FHTT9MuiEgcWk4Vl6ZKq0v7j6+djf
         bS5g==
X-Gm-Message-State: APjAAAWMuG9wJIb4r+05HVIMDFatC4udTobxgww4opBNFlV3nSytXvgp
	6CZJ9jaJH/dYhHJgY0ziiCZDNStaW2QmEo6SfTk=
X-Google-Smtp-Source: APXvYqwoDIEV/UFbnDpbOEogE5AQ+qkBGlxrWHHUrT30jEZxs4wic2hHwXHii7kYiYKopUqsYCnLpdMY+cO40pmrzZ8=
X-Received: by 2002:a17:906:2cd6:: with SMTP id r22mr13914860ejr.313.1578870354875;
 Sun, 12 Jan 2020 15:05:54 -0800 (PST)
MIME-Version: 1.0
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
In-Reply-To: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 13 Jan 2020 00:05:44 +0100
Message-ID: <CAFBinCByt2Jukn5ZgtrABF2OtqduT733LEvvZLqd97j60Vj9dQ@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new devices
To: Paul Spooren <mail@aparcar.org>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_150558_071363_556D8B06 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:542 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Hi Paul,

On Sun, Jan 12, 2020 at 10:47 PM Paul Spooren <mail@aparcar.org> wrote:
>
> Hi all,
>
> some time ago I created a (now outdated) device overview[0] based on
> YAML meta data. This approach could simplify maintaining an device
> overview and device specific pages[1].
>
> All commits adding new devices already include most relevant information
> for creating the overview. However it would be convenient if developers
> would format their commit messages in a generic format, therefore I'd
> propose the following:
>
> Every commit message for newly added devices must contain a number of
> hardware information and steps for an initial installation.
> The hardware information should contain at least the following
> information, maybe more:
>
> SoC, flash, ram, wifi, LEDs, buttons, USB, serial, vendor, model, device
> tree ID, Ethernet ports
can we automate this somehow?
the device tree files already contain most of that information.

(I'm all for providing good data for the TOH but I'm challenging the
idea of doing this manually)


Martin


--===============8782809372851773356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8782809372851773356==--
