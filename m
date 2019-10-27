Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0E3E6385
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 15:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8QQuoGpaimM/RLoUgU4DKgq9C4qu+Ixl8WF61EdH1A=; b=TkjwsGCx1NXgqy
	KqIyfJTNXbAQ95mpud+DTkN6mVmENQTY+UZ8U78FFAXsOr87fHiQT+oTU6BXyKaR4ZLqw4suxKQut
	wfpY5d+R52Bgh2zWXFnbz9E67kTTovLB+2ohojtCc3uL336wJfcBoFIAi/1IwbgrFstbVVleIEu18
	0+Aqw7LQlRcxvK5kAC7ZGWJquRzs2D02CEpEK4lpwJWx/kHk79G0PNFPgELh/sW7A6shjOlze9dqu
	0OUhD8sU6h1zwcubDLGnF3PDB26UFSC3aGOhTlF8mhdb9ZU8wZoJe9Mz//3QGZAQ6XYrBLrT3Z5zr
	kL0U2kmjTHWof0euAd8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOjup-0003lc-R0; Sun, 27 Oct 2019 14:53:11 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOjug-0003lF-UG
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 14:53:04 +0000
Received: by mail-ot1-x336.google.com with SMTP id u13so5155899ote.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 27 Oct 2019 07:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=x5fMqH1/11+P9hxIwlWC+xww7IqMmA6gl4kr1iklHxY=;
 b=dh7LvB8NPCZqsDnMq+c1DK+NZgMrK0GuqdpPx42091bTirMtfkoVCw3SFstq9cvv5E
 W19WPGuQJQaVN5NH1ik6+N3OxAFYDTh0z4fNB/vDE+KjxFGl9upGl+Yy316mJRyQBV4P
 AItkHUsRpwl1xd2RPRyCYTjjBWupJe9s4U4BjjlE35IgQrwWeUGC1xJSzLMg+HcAalae
 TJctbWFAdJ3G4AtswATENOZiE6xbhNSOy8IWvRNENRW1VLxS86avBdn6dNuedV9opF77
 SSjBtbMzwZI5y6b1RBb3+dNj+GSygqr7fp5ZUTNPFb8RI4BFDc9fzehq76YNprOQ9KZg
 vNig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=x5fMqH1/11+P9hxIwlWC+xww7IqMmA6gl4kr1iklHxY=;
 b=Tc5MY7qNkxt0IsuC1nLDbjvfU1DAnI7J/LylfzY9o936GdXfoyrFUPv7H9ClUnhAH8
 adf8nYOZlStkBCy/Yvo5CdgIhKP94PMUj2E9GZxZXb8jWGd3DahMjBRziw7iftP+QwEY
 RecmvzjKBOJ+gmc2hlqEHAKfSyGRe+2jvPEwmQvqv43MxFENuHBc6V53/yCfVDXvQBPo
 oNkIQOx8AMvgwJ/kmA5EHmgqPSjFFl2Va5Lgt4tQ16ki4X2abCdGctISeNx1xrfCDiJ0
 wQ8q/Fq5VcUMoDkTT2HhQbjPcSOke/cvtIuUl8N0sJkt4Gb/CcLqqR51XAeezXty1Mhs
 Hhng==
X-Gm-Message-State: APjAAAX0EuUr6tuu6MpO7tyF+wPEUIVRBYYnMautIZd59+Pj9HZc9BFa
 nyYQTvAXWPbs8VlXt5Cj2/spBxVEMv7H5QXpnfo=
X-Google-Smtp-Source: APXvYqwhLxTHZZsIRrJOjLSV5c62WPmB+tPUurDRUlomaM57EKmyfyjbnqBxlwCQ+gS5hKQIs0QnlfktueiC0UUmzc4=
X-Received: by 2002:a05:6830:18a:: with SMTP id
 q10mr9959743ota.236.1572187981285; 
 Sun, 27 Oct 2019 07:53:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7511:0:0:0:0:0 with HTTP; Sun, 27 Oct 2019 07:53:00
 -0700 (PDT)
In-Reply-To: <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
References: <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sun, 27 Oct 2019 15:53:00 +0100
Message-ID: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_075303_001878_14A9E42F 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] patches from 2018
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 27/10/2019, John Crispin <john@phrozen.org> wrote:
> Hi,
> I'd like to close all patches pending from 2018 in patchwork, there are
> ~25 and a quick try on some showed none of the apply anymore. Anyone
> have a problem with this ?
> 	John
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

Actually, yes. Most of these have state "New" thus never even being
reviewed. Better approach would be to review them, reject those that
are superseded and request changes for those that would still apply
but need to be reworked due to code changes.

Regards, Tom

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
