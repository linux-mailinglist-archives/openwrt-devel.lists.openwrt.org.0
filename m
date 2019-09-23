Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998D8BAC65
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 03:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cqtKsG2dwC//wU3EAF+i0bzv+c9uTdBKjO3gih8g+g4=; b=sX2wqEYqZ52v+aArI3UvFEPBuU
	FYv5uzgMswXlN1QUxb+kiW/YKy3TkTp6APPJBEHFKMiVIX4+NGW/RwBtN6C3N/1heUcErvQYJe4U6
	SpkglFmcJ3M5Wig3/MWs3yuEkeVn+61aZzEJ28nxc5jWudmeLiNONK+aJ2F/9IyoSh5mHy+Jir/0Z
	RWtFCpd49DVNYd4/nuPO3OJQPvwirCKHNYJawD/5RHpZ0kE9Trbvjv2hjDafI8ZtIpykbjx/2g4nL
	y5pTXeXEPbJlF0wqZW35fL2e5cT47+J5/xBLNmjta3z4x5uMzfXGGyhRJqytADfY7DFRL3yvjy80l
	cEkgc5Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCDAZ-0006pZ-Lf; Mon, 23 Sep 2019 01:29:39 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCDAI-0006pF-IN
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 01:29:23 +0000
Received: by mail-qk1-x743.google.com with SMTP id y144so13663160qkb.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Sep 2019 18:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=1QTRz5yG71ZmK/MX7zAqIh33A78uwTYc5sSkxwS69fM=;
 b=iQV7+s+IJ4dYW5EYw4te9pUAioJzKFRPFL3eLZROw5blMehvnMl4ilb9vBTV+5wJad
 B4lFLD1CjSDrYT1oyVPiFlBvP4dw6np8zhBPueHqxVgRvgcHZmgtTMTMNiiBLcyo8w3u
 gVZAoDPH/EoofUstupVOo4n0YkLG0MgIgE3nj8KW0/eKiJGoxt0AabdQveoqGO9QOxNl
 IzC/TN9+1glr3Acgc4df9tNuBNlS5CkEaEcGtdoowk/DCj19faZx0dIONlOisHsZ7ckZ
 0sWwLzmTh7NjTmFzNSlJnaIsy0EtVmZBoWi0estg7Or8OaPJPr9lz7lDT4AUEyxJNWJM
 9THQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=1QTRz5yG71ZmK/MX7zAqIh33A78uwTYc5sSkxwS69fM=;
 b=kQX02RxzJhWT/h8OztoVcCxLi9R9FY+wmcmxaEB2+xgqYf2XPuIIiqz1ygYDorLnFs
 c7b/W51R7LAs1KRqQ2Ih0mo9t4TAj0pfgcPqXnC/cmuwJFecUhTzdzaXE+iiMqr18cqH
 7hRWBVc7XqjZgFFrLU3VTQCLZYiy+Nql6MFZhnkwA7xoHzu+RjygmiUYEpBAV4AzVI/u
 cz6J3fpy8xgOVioydIlQ1G3w81HhVqELghfARHfnpAjLl6JMLhvXCPwWJQRpC9RhvF/b
 2d470uU6KC0GxW4EXs+9ql2sKfrbMwnqFuMrTM3ReEUpj+G3UeTV+ATsJQYZRNzLlTUh
 Egdg==
X-Gm-Message-State: APjAAAXyUMNhB2yUo5z7eEkGrUqYT17KNxBpV1lrVM/jHrzwZLTXZ2AS
 ZcDHdIoeiljQACwIi1RIKguQkulJ70m0cZeuW/vp8nQZ
X-Google-Smtp-Source: APXvYqx1izzWev9wQ0eT81+DQj/06K7GTA/6pPbaWsn2tdBVKTdTYyhByQSb8GALQKKgrPYkmcs6d7Ul2O+cOZvdwGo=
X-Received: by 2002:a37:6291:: with SMTP id
 w139mr15221499qkb.268.1569202159062; 
 Sun, 22 Sep 2019 18:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190917135211.21673-1-cotequeiroz@gmail.com>
In-Reply-To: <20190917135211.21673-1-cotequeiroz@gmail.com>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Sun, 22 Sep 2019 22:29:07 -0300
Message-ID: <CAPxccB0mH8Upqk3QMSxt91+=Pqowq0k=nYubzpVvD_YSKuL5yQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_182922_645060_BA9C6367 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] openssl: bump to 1.1.1d
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

On Tue, Sep 17, 2019 at 10:52 AM Eneas U de Queiroz
<cotequeiroz@gmail.com> wrote:
>
> This version fixes 3 low-severity vulnerabilities:
>
> - CVE-2019-1547: ECDSA remote timing attack
> - CVE-2019-1549: Fork Protection
> - CVE-2019-1563: Padding Oracle in PKCS7_dataDecode and
>                  CMS_decrypt_set1_pkey
>
> Patches were refreshed.
>
> Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
>
> --
> Run-tested on WRT3200ACM, mvebu, running openwrt master, using uhttpd,
> nginx, openssl-util, and uclient-fetch; devcrypto engine specifically
> tested.
>
> This should be cherry-picked to openwrt-19.07 as well.
>

Can someone please cherry pick this to 19.07:
d868d0a5d7e1d76bb1a8980346d222fae55fa18b

If I should rather send a proper patch to list, please let me know.

BR

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
