Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1711125A9
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 09:45:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R/Hv0GmSWpEjWdUOC284qy2x1VuiEFZ6Nz+a6t5wbHw=; b=VZ25WkxuSMs/GHHxSDf0sN4zw
	H8v6tleCppOiHAZZ/aF0Opk7BuR2Ge8XQ2OKrhCRh6o5U57bX/jgkKabn4GD1eIN+A1HTUQ6tEq1v
	IU8wi3bUSt5BpZKm2hNhxLDYutmXNIU/izEPtbEwC3CzOhpZmewtu20H+N4TAxvl/LD+KUGT8o5oB
	DcO/qMf/luxCQQ2E+pfc1DCBdEa/cgVGlMt0iSfMIaccc+lrXVtnOVsieQlom6Eqq7OclPJ4xDTGo
	V9E1sLjUvVuFQhWKdIs6Jh5tDKTrrzjbCwecdJViKmOStfaJBZMf7IpBKbKlXrPHe9gDFsjd8OB2D
	5A15up1Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQHQ-0005tX-RN; Wed, 04 Dec 2019 08:45:04 +0000
Received: from smtp7.dhosting.pl ([195.88.50.181])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQHF-0005t9-1r
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 08:44:55 +0000
Received: from [172.16.200.69] (unknown [194.15.123.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: marcin.zieba@ehlo.red)
 by smtp-2.dpoczta.pl (smtp-2.dpoczta.pl) with ESMTPSA id 47SXTZ2VWcz2xhH;
 Wed,  4 Dec 2019 09:44:34 +0100 (CET)
To: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <09cccd72-f969-0324-f78a-a1c416406f50@hauke-m.de>
From: =?UTF-8?Q?Marcin_Zi=c4=99ba?= <marcin.zieba@ehlo.red>
Message-ID: <2daeff27-c33b-c472-4566-fd414ead0254@ehlo.red>
Date: Wed, 4 Dec 2019 09:44:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <09cccd72-f969-0324-f78a-a1c416406f50@hauke-m.de>
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ehlo.red; s=dhosting;
 t=1575449074; bh=2OzSlkU/wHF6mo53WM4W3XFLAPr65FqMkbuxCKa0nqY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To;
 b=XmKvQ96SRElS7nakn+ecxheTqRAo8K1HhaqLjS0kq0lCcLZPkh9b9ti7igy1mUsd8
 5uYr7votJtzwNWps4xQvXv6z1nvypP4/8WarSIo2zp073q6m4aYTYfCjPpoBORRFvJ
 Pw/ITioieDPPFW8V1mJNUNtuzAJxrlFFXjoeoa64=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_004453_419676_3EAFA46B 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.88.50.181 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Security Advisory 2019-11-05-1 - LuCI stored XSS
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
Cc: Jo-Philipp Wich <jo@mein.io>, Ridwan Maulana <mrm@asdqwe.net>
Content-Type: multipart/mixed; boundary="===============2728839760918824680=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============2728839760918824680==
Content-Type: multipart/alternative;
 boundary="------------B56E528B843FEAE9D51FB237"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B56E528B843FEAE9D51FB237
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all,

any news regarding CVE assignment ?

Regards,
Marcin

On 13/11/2019 23:34, Hauke Mehrtens wrote:
> Security Advisory 2019-11-05-1 - LuCI stored XSS
>
>
> DESCRIPTION
>
> A vulnerability has been reported in LuCI which allows injection of
> script code through maliciously crafted wireless network SSIDs.
>
> When joining a wireless network by clicking Network -> Wireless -> Join,
> the subsequent configuration view interprets the SSID of the network
> to join without proper escaping, allowing to execute arbitrary
> JavaScript in the client's web browser through network names which
> contains payload, for example
> AP</h2><svg onclick=alert(0);>
>
> Additionally the network interface overview displays configured wireless
> network SSID without proper escaping.
>
> Since the SSID string is stored in the UCI configuration, the issue
> effectively becomes a stored Stored Cross Site Scripting (XSS)
> vulnerability.
>
>
> REQUIREMENTS
>
> In order to exploit this vulnerability, a user needs to either
> explicitly pick a network with a malicious SSID from the wireless scan
> result list or manually add a wireless network with an SSID containing
> embedded script and browsing to the network interface overview page.
>
> The wireless scan result list is not affected by this issue, so no
> automatic script code execution is possible through it.
>
>
> MITIGATIONS
>
> To fix this issue, update the affected LuCI package using the command
> below. The fix is contained in version `git-19.309.48729-bc17ef673` and
> later.
>
>    `opkg update; opkg upgrade luci-mod-admin-full`
>
> To workaround the problem, avoid joining networks with HTML code in the
> SSID.
>
>
> AFFECTED VERSIONS
>
> To our knowledge, LuCI packages with OpenWrt versions 18.06.0 to 18.06.4
> are affected. OpenWrt 19.07 is not affected by this problem.
> The fixed LuCI packages are integrated in the OpenWrt 18.06.5. Older
> versions of OpenWrt (e.g. OpenWrt 15.05 and LEDE 17.01) are end of life
> and not supported any more.
>
>
> CREDITS
>
> The issue has been reported by Marcin Zieba <marcin.zieba@ehlo.red> on
> 27th October 2019 and independently by Ridwan Maulana <mrm@asdqwe.net>
> on 5th November 2019.
> The issue has been fixed by Jo-Philipp Wich <jo@mein.io>
>
>
> REFERENCES
>
> https://github.com/openwrt/luci/commit/bc17ef673f734ea8e7e696ba5735588da9111dcd



--------------B56E528B843FEAE9D51FB237
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <font face="Calibri">Hi all,<br>
      <br>
      any news regarding CVE assignment ? <br>
      <br>
      Regards,<br>
      Marcin <br>
    </font><br>
    <div class="moz-cite-prefix">On 13/11/2019 23:34, Hauke Mehrtens
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:09cccd72-f969-0324-f78a-a1c416406f50@hauke-m.de"
      id="mid_09cccd72_f969_0324_f78a_a1c416406f50_hauke_m_de" class="
      cite">
      <pre class="moz-quote-pre" wrap="">Security Advisory 2019-11-05-1 - LuCI stored XSS


DESCRIPTION

A vulnerability has been reported in LuCI which allows injection of
script code through maliciously crafted wireless network SSIDs.

When joining a wireless network by clicking Network -&gt; Wireless -&gt; Join,
the subsequent configuration view interprets the SSID of the network
to join without proper escaping, allowing to execute arbitrary
JavaScript in the client's web browser through network names which
contains payload, for example
AP&lt;/h2&gt;&lt;svg onclick=alert(0);&gt;

Additionally the network interface overview displays configured wireless
network SSID without proper escaping.

Since the SSID string is stored in the UCI configuration, the issue
effectively becomes a stored Stored Cross Site Scripting (XSS)
vulnerability.


REQUIREMENTS

In order to exploit this vulnerability, a user needs to either
explicitly pick a network with a malicious SSID from the wireless scan
result list or manually add a wireless network with an SSID containing
embedded script and browsing to the network interface overview page.

The wireless scan result list is not affected by this issue, so no
automatic script code execution is possible through it.


MITIGATIONS

To fix this issue, update the affected LuCI package using the command
below. The fix is contained in version `git-19.309.48729-bc17ef673` and
later.

   `opkg update; opkg upgrade luci-mod-admin-full`

To workaround the problem, avoid joining networks with HTML code in the
SSID.


AFFECTED VERSIONS

To our knowledge, LuCI packages with OpenWrt versions 18.06.0 to 18.06.4
are affected. OpenWrt 19.07 is not affected by this problem.
The fixed LuCI packages are integrated in the OpenWrt 18.06.5. Older
versions of OpenWrt (e.g. OpenWrt 15.05 and LEDE 17.01) are end of life
and not supported any more.


CREDITS

The issue has been reported by Marcin Zieba <a class="moz-txt-link-rfc2396E" href="mailto:marcin.zieba@ehlo.red">&lt;marcin.zieba@ehlo.red&gt;</a> on
27th October 2019 and independently by Ridwan Maulana <a class="moz-txt-link-rfc2396E" href="mailto:mrm@asdqwe.net">&lt;mrm@asdqwe.net&gt;</a>
on 5th November 2019.
The issue has been fixed by Jo-Philipp Wich <a class="moz-txt-link-rfc2396E" href="mailto:jo@mein.io">&lt;jo@mein.io&gt;</a>


REFERENCES

<a class="moz-txt-link-freetext" href="https://github.com/openwrt/luci/commit/bc17ef673f734ea8e7e696ba5735588da9111dcd">https://github.com/openwrt/luci/commit/bc17ef673f734ea8e7e696ba5735588da9111dcd</a>
</pre>
    </blockquote>
    <br>
    <br>
  </body>
</html>

--------------B56E528B843FEAE9D51FB237--


--===============2728839760918824680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2728839760918824680==--

