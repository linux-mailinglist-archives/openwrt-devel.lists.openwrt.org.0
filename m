Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCDF1D2338
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 01:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zIS2hietdD0cbHwucycvxkqr6WmfvIsKATmNfowhweE=; b=RiLQc/K3HrJrd5fqoXHrVPc6W
	iNMv4wekX8McsYJzzzYT9rR8OVY6IQ2regb4UqJp6W0wgRqLGbYzZ+K137tGsX/cBrOuwlrF5CaS5
	l9/+YypHeKm3VwlZvZ09TX4Mt4WfovsCeqQyvE/pbnMcsPFGrmOnBK1m/5FssBpLIL/IiyYqnhKhR
	5dSROx5r1U0uAkhD6CfgyFkODhzJeo4pOzyYodamG8LAG7knebfkrwuEOkavVwPHDHD3Zjx6WIf5k
	osuwKJD//WGqXbL6+Kf8Fzn3v8dh4wTKFJ4CB0uQ3IETcZNzs9Km2r+7X9pkRB/J27wRaTOgi6zmY
	I5vii60tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ14K-0006aj-1P; Wed, 13 May 2020 23:45:44 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ14D-0006aD-Cl
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 23:45:38 +0000
Received: by mail-lj1-x22e.google.com with SMTP id d21so1470894ljg.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 16:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xiqGVeB6hQ3N5IQTA9Y38TWYT9pWmKvNZhU1ZAnjzg8=;
 b=bj9AU014JlS/GZ3WTa2kcvjEX2g94iQ/1NuJq1bwJGFF5JEdD+wSCSAflzfdcM53Jc
 vuGd+C4f0WEDbMERWVc/rX7Sy9suHBDQwqpk9pSxwNmuzgYNEK1O/8xDJacALJqUE0/W
 WL53g9XQhXO3h5cFW62hRVPg1xtbPkpvf6WyCX0QzgL5V8A7CmcXBb2dCSdPtBBLNeEI
 z/TCm29p3J/tCi4TfPObFNy3fiB6CBxLEtvJgvorbH0LV72f2eMOGYQiiabvdo9KurbM
 ml6SKuC954Mn94+8GQf7FIzvOX63kZvyYMQ2r3kqmKDYMx0sIaCvOthIGBCfbB3HnNC5
 hv1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xiqGVeB6hQ3N5IQTA9Y38TWYT9pWmKvNZhU1ZAnjzg8=;
 b=gA7frx3SlMReJHSfMIbF2aCbqFj/uitJjxj6FtdZIIIU9e3datXSe11U4JtJVdYZZi
 IhOglhdnqbvHMUUi8Iga4Iwwy/0QxWKIGVORom1aYb+qIYx0yYpO5NK9Kll35HrDEHS+
 Ra8I++vK7yw1XDHXjtgp9lLGqg2nKX28XNxXPv9CzcfCL3E7OFR3DUPhI7oS2boSi6Rp
 d/uDfQA+LNvl/5aRV1MXFGpiDK3WBkhvjNLf7zb+/2Pfr/SfDC+eFsgEKkfM+yKgpvZw
 nBbObsaE7avNu70wOw1yLqxdcW5xIuurbwVPYz4pqIrrTa2J4Paj0pUvd5ZCK7nGhc1S
 nm9A==
X-Gm-Message-State: AOAM530dAV7Eqoxgwr4VUPXEet3bo5DmwUbkNTQhNBgCNHQMnFUAq8L8
 KfC4jN0iO6kaW1jOceuv29zPW1GCZO9uG1czeOFj2p1FIBA=
X-Google-Smtp-Source: ABdhPJzk7Cmv7Yd4wkYZRJ69R35SCTQ3QWb6GO4fjKQjf0rCIVJX8PzpXCLyJLgp7VC75DKcmyAVPRNyM6WWLx5PJGo=
X-Received: by 2002:a2e:50b:: with SMTP id 11mr901396ljf.233.1589413535351;
 Wed, 13 May 2020 16:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <EF289B10-A44B-40B9-B071-3E875AC77B41@redfish-solutions.com>
 <CAJQUmm4S-8S1ETEuAuA77-ZCCVEEO_4fVJkFczYOPneaD1FNmw@mail.gmail.com>
 <153249F9-B397-4A4E-819A-0C417F9E247C@redfish-solutions.com>
In-Reply-To: <153249F9-B397-4A4E-819A-0C417F9E247C@redfish-solutions.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 18:45:23 -0500
Message-ID: <CAJQUmm6cd5qj6ZE-Z2yQB0WzUQUJt+o6YX=N_LGJ6GvLAgv9iQ@mail.gmail.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_164537_498449_3AE16EF9 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4445949530748399058=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4445949530748399058==
Content-Type: multipart/alternative; boundary="0000000000002d1a7005a5902d31"

--0000000000002d1a7005a5902d31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2020 at 6:29 PM Philip Prindeville <
philipp_subx@redfish-solutions.com> wrote:

>
> My lights-out machine rooms all have a dialup line, a terminal server, an=
d
> a power strip where I can cycle outlets=E2=80=A6 because I don=E2=80=99t =
like driving 7
> hours each way for 1 hour of productive work.
>
>
My OpenWRT boxes are deployed in deep rural areas on other continents

Sadly, I haven't been able to convince customers to upgrade to remotely
controllable power strips.  :-)

--0000000000002d1a7005a5902d31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 6:29 PM Phili=
p Prindeville &lt;<a href=3D"mailto:philipp_subx@redfish-solutions.com">phi=
lipp_subx@redfish-solutions.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br>
My lights-out machine rooms all have a dialup line, a terminal server, and =
a power strip where I can cycle outlets=E2=80=A6 because I don=E2=80=99t li=
ke driving 7 hours each way for 1 hour of productive work.<br>
<br></blockquote><div><br></div><div>My OpenWRT boxes are deployed in deep =
rural areas on other continents</div><div><br></div><div>Sadly, I haven&#39=
;t been able to convince customers to upgrade to remotely controllable powe=
r strips.=C2=A0 :-)</div></div></div>

--0000000000002d1a7005a5902d31--


--===============4445949530748399058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4445949530748399058==--

