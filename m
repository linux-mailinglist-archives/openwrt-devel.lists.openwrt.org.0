Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AA7190B42
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 11:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/bq3h9HfRKWUHu+bXSHsTStW8D+EgZhznJcqBSLOhaw=; b=TrS683XayTq8DCdGF9p0Ny4wL
	2+6epk7qM0QO5HhjqshnZUalBvvIDJ2RRO+l6nGRa0C8souK3bKz+bE4gdONJvotEroyqMLwmhPF7
	E32IqksjNrH0E0oeXeLjRsiSuKKRklHH1VOXldjE1Bf95SMLCOJhEszc5ACWyNqsjdV5RsTy6RefU
	oV89kOGcXSzzI8bwTGh4ZKHCEJEUL6tJRuhSMdYPG8FjGm50m8kldZtVUtSSZnM1EeEckk8k6cXHj
	qv0C8+BMtmVV2w7nawfTqU8p3zXbp0TsSaq2EwEJHw4LHtSoOj9SRy+YIbO+6uKE5CY0S2O2eMfhZ
	bXh1CPM8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgy0-0005Gj-LK; Tue, 24 Mar 2020 10:39:28 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgxr-0005Fu-Bg
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 10:39:22 +0000
Received: by mail-ed1-x52f.google.com with SMTP id u59so20065593edc.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 03:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=SUlAInY9hMNkDX4mzmmBzJVAAFgFWnCXoz6G5VIhzXw=;
 b=YkhCErII41Zl53PPoDp2Q0G3kA+5A5PLWx544tR+kNxI7Hg6Ay5O/TNvFbjgs2JL3S
 JBWlEYnQ4lEGMLyAM12bNXiIWDW0g/74Ac7ucG6cy72UsgRbKP3JBi/XTA6pkp4Gel7f
 TP749T/skCaTGF7Sq8K0BwTelygYQCYgHnm/6deyTCy/Hc9BeAlkYs3LinysrV81NHhq
 dT2uO9p1a2kx4+im575kOWqoO9JXc67mbcDdAyR/lMsieT2i9dEOBCOxSZpqp6kBj5NO
 Cag3tYdPNBYupLceCOf3xwDl4AkqmcVzA2K/+HJ4sZ+UjP61oZg+suVvMCoP1S1Y73+k
 bl/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=SUlAInY9hMNkDX4mzmmBzJVAAFgFWnCXoz6G5VIhzXw=;
 b=doaaq8vwHgQQ5VH0bknPgXFb1AxSa3VzbOqJmZTI5GCel2oPBrhRBDWfHPQlQAGlo7
 S88MRiv5LwZg+h9evTz6bJ66v7PvhJ6t8B7gDvFmHSwMj/PHY4jotwD2n4fdQsZaZjFG
 iH5Dram1MTnRWFEU/ak8cosREGf76YMrbzwZA7Tl5tKoLzxZBxSgjM/2ATBYDRmkKPK5
 Fo4AvZUGz4Xh0V474yAjWoU0dU7bGzyk72N2v1fuD1Sf0w0zw0NOoTAVO6uWDMsn31pW
 Bs2EerI7LsBsIRzP9H3NPxH/Rge+lvbGS6QGuqjBOI0uOrWLHVdJzpsGgahpnr4Eq6al
 HOJg==
X-Gm-Message-State: ANhLgQ1MW57Wou+ejRH1Z50V4BtL6PgdtbvEcHWxpfncA5wszcwcoUXt
 RPXLvHsp4Ly7fDiZctzxeUplQ5KnJExIiNpozg0eJLia
X-Google-Smtp-Source: ADFU+vvPs3C6aBM/9JCy/paamwqmunNYww9XMhBw77fI9bv9oQdp3LHq33e6XRBUGuV4ucUhVfdN9VZC1knbafrMPpM=
X-Received: by 2002:a50:f09c:: with SMTP id v28mr25066349edl.46.1585046356988; 
 Tue, 24 Mar 2020 03:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
In-Reply-To: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 24 Mar 2020 19:39:05 +0900
Message-ID: <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_033919_400180_3104831C 
X-CRM114-Status: UNSURE (   4.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] How can I include strace into the firmware?
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
Content-Type: multipart/mixed; boundary="===============0745280180922098136=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0745280180922098136==
Content-Type: multipart/alternative; boundary="0000000000000f9bf505a1975d34"

--0000000000000f9bf505a1975d34
Content-Type: text/plain; charset="UTF-8"

Hello,

I'd like to use "strace" in openwrt firmware.
As you might know strace uses automake, autoconf and autotools.
It uses configure.ac and Makefile.am.

If it's just suing simple Makefile, the directory package/ would be good
place to place it, but strace uses automake - Makefile.am and configure.ac,
...

How am I supposed to include strace into openwrt source code?

Thank you in advance!
Jeonghum

--0000000000000f9bf505a1975d34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;d like to use &quot;strace=
&quot; in openwrt firmware.</div><div>As you might know strace uses automak=
e, autoconf and autotools.</div><div>It uses <a href=3D"http://configure.ac=
">configure.ac</a> and Makefile.am.</div><div><br></div><div>If it&#39;s ju=
st suing simple Makefile, the directory package/ would be good place to pla=
ce it, but strace uses automake - Makefile.am and <a href=3D"http://configu=
re.ac">configure.ac</a>, ...</div><div><br></div><div>How am I supposed to =
include strace into openwrt source code?</div><div><br></div><div>Thank you=
 in advance!</div><div>Jeonghum</div></div>

--0000000000000f9bf505a1975d34--


--===============0745280180922098136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0745280180922098136==--

