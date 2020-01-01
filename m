Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91812E0F8
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 00:09:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9xvHeHdJP1fV/aRPN+Glo3xGTci4F8MY5iqxsdC2LQE=; b=ljyZJGtVCDSvhk3ngANOxvUOyU
	QMCXF5MiII0vfWXcIZxTdaQRgfKoVAV8mT0csfizdkF1mvqZMoBIOvyIYfveCxdkpeSeIzBc92MEF
	dyUsdS3UHFdj9cX+rmLBtc7VnsG8mC8KfMjt9nzRLjM9rMzGTDe1p9n/UxLqtz0axcV3ibjR7TUzC
	vpchC5FumL5F7gQHj0nGE21rrcxTW7XMgcfuNbZDyMeHQO6sy9eHYxzCB6fafi8oHA1rx0JDLkTPC
	vDjm1hB429wbx5ykDOmeqEv8RIokKUwjjKMVr4jYsqwdpZ7Eez7e4IxuVVB/kpYd/CRkKvsGit2Gn
	AzU7Ad5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imn7c-000162-Fn; Wed, 01 Jan 2020 23:09:48 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imn7S-00015k-7u
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 23:09:39 +0000
Received: by mail-ot1-x341.google.com with SMTP id 19so42224358otz.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 15:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=aDXSe26Nl6xL//NfK32hsuqr3O4BgPspTSVrjiLmVLU=;
 b=Ls+ZB9E3ZNq0ylGG2KlLqp+xEqj/9Y/sN0Qg0WLtJZTJeprRKR7TKf1K5GLBqvkWej
 0XJi98kw0LYE94ilKfZEdEJbTM8U3YwtIfdr7FNtVAVPw28m0+trdoVlNJjKdwCBEZVd
 s2HTuPpmQi2g66Onvs3Qt6+jNt7clpfp3oktVlAVg8eMtKCOeNv7ChMDpu/Y0186B3M0
 942qbAuE7eQNXoFHrt3XNDn9XXzCNSCkSuOzVC/bjZBpylni6oTkg7vhzlFdmSKOlUhK
 AmTTQ7gX56BLyYThJKS9YR3Y+UqhcKDFevirUiI42fkdwuyjzL+X9DDE5tgtY32OXd6T
 zSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=aDXSe26Nl6xL//NfK32hsuqr3O4BgPspTSVrjiLmVLU=;
 b=JMNAgVLyif2FweEB9x6sWwQai2iVhAUnbKhiVvl6qRQkBsfVN+NB33zamtx+0hxSih
 GlcjW0OqeJP/YP6Xpr+/9dBprpGzZ7OzeastVMPAZQUsW4lthqlt2pQayNzV6Il+aaHx
 Sd0Q0f4o4Ardvovxp8XZFFYCDaQWp3DJl/kcQNQrncBHiU1wKB1jRa3as33a6Geip6Vp
 2x/9E5xsvHhKV/nDLD0sL0XeB5rhXBj6ppvDJjaz6unP7BSdze5YluJ2h8dl/ut2mBH6
 XVBJJKQrxaE51aWyHuw+bQozaWsBGYE7VADD1MjqLSJU8t1hlo4LIIqcUhBbSAI+4+zR
 g/ew==
X-Gm-Message-State: APjAAAXkd38KgWw0rP2ZSBeTng8wHNpyjnPlRoSB4LYFc/y/Q2d5B0KN
 NTIpWiQXLTlrflGXGZWsMB7iiSjEIPLFT+yPeZHfS5c4
X-Google-Smtp-Source: APXvYqzzE2dg8qU9TsLxO74o1zqT41fr9pFhYaFaRJwLiTStuonz3DOIeDHy2UfCcioBHrecgcKpy9cYzqWMhRxiEfw=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr92099769otq.281.1577920176909; 
 Wed, 01 Jan 2020 15:09:36 -0800 (PST)
MIME-Version: 1.0
References: <20200101020146.21043-1-rosenp@gmail.com>
 <20200101020146.21043-2-rosenp@gmail.com>
 <24FE6A40-78BB-4920-BC88-F64DA47108C6@oranjevos.nl>
In-Reply-To: <24FE6A40-78BB-4920-BC88-F64DA47108C6@oranjevos.nl>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 1 Jan 2020 15:09:26 -0800
Message-ID: <CAKxU2N9Lk3SLQZE0UCwS8N3gRw_HisChK4pDckjZwZd3x7p7UA@mail.gmail.com>
To: Paul Oranje <por@oranjevos.nl>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_150938_285235_72C20DA4 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/5] scripts/env: replace -a and -o with
 &&/||
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Jan 1, 2020 at 5:47 AM Paul Oranje <por@oranjevos.nl> wrote:
>
> Happy new year !
>
> A minor question/nitpick, see below.
> Regards
>
> > Op 1 jan. 2020, om 03:01 heeft Rosen Penev <rosenp@gmail.com> het volgende geschreven:
> >
> > The former are not well defined.
> >
> > Found with shellcheck.
> [skip]
>
> > -                     [ -d "$BASEDIR/files" -a \! -L "$BASEDIR/files" ] && {
> > +                     if [ -d "$BASEDIR/files" ] && [ \! -L "$BASEDIR/files" ]; then
> >                               mkdir -p "$ENVDIR/files"
> >                               shopt -s dotglob
> >                               mv "$BASEDIR/files/"* "$ENVDIR/files/" 2>/dev/null
> >                               shopt -u dotglob
> >                               rmdir "$BASEDIR/files"
> > -                     }
> > +                     fi
> Why has " ... && { ... }" syntax been replaced with "if ... then ... fi" ?
> Both forms are used in the script anyway.
It's clearer. One issue with replacing -a with && is the case of [ 1
-a 2 ] ||. [ 1 ] && [ 2 ] || has the wrong behaviour. It's not the
case here but generally speaking it's more correct to replace with an
if statement.

Please also Reply to All next time.
>
> [skip]

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
