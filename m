Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364801FF284
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 15:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3KCSHg5RyE4TFyU7K0HCP9n8qcXhBxWgWDccT1xP4kw=; b=fMTG42l90wJN7Fs8s+djhHvFX
	Us/ctzGocMoPaz5KtAHkraHHkFbXaCnMJB/AStJ/WvIvbkadfIwkHkEPg4I8AjccbH5/5p6dAdJ82
	KKzyZaw63rsx/dEQrI5FedCYnRt3t6XHdzFaYTQo9H/MpGnk5aXISYV+/Rdtqt6ZUlbwjSV6SnJyp
	cOh6d9F7KFHb+TDIAeK25DS4+h7IDm/1jlFy7AIyYJMzQG5o+6MuuFNS16i8Z6TZBkpz4HY8dkskX
	c1NYLnktutNSefG+GVjuoLnCU5S3j/HWQtj5AW6fvkjOg/HD0362SDwSMr2VOx9PIopRtBkwjUezr
	d3FeyTu7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlu9S-0005JC-Bg; Thu, 18 Jun 2020 13:00:18 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlu9A-0004p7-Ma
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 13:00:03 +0000
Received: from [IPv6:2001:1488:fffe:255:813c:ddfe:d914:211d] (unknown
 [IPv6:2001:1488:fffe:255:813c:ddfe:d914:211d])
 by mail.nic.cz (Postfix) with ESMTPSA id F1C631409BE;
 Thu, 18 Jun 2020 14:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1592485194; bh=1Qb3VEUwcowkjIEU3rfx4roiCD7jjO3LR28ljiK3GK4=;
 h=To:From:Date;
 b=BLnzHiQu4jtSyTL9B/sWMFJiGrUvI6oEbXKWyL/4jeLmj44yquf4s0pP8w745l6Le
 nk0EotceaoqxZ8xdvDxnFl2CvoUp3rjQgd4sdp1wfw2NDD9UTrWxw0nsb0BDUd1nSt
 kQ85H2VymoKrkBDTqCpaGIXWKOe7gpUeHUCoEAlA=
To: Eneas U de Queiroz <cotequeiroz@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200220212904.2444-1-cotequeiroz@gmail.com>
From: Josef Schlehofer <josef.schlehofer@nic.cz>
Autocrypt: addr=josef.schlehofer@nic.cz; keydata=
 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
Message-ID: <e8ebad8d-da99-2194-145a-e0ad9fbb0e07@nic.cz>
Date: Thu, 18 Jun 2020 14:59:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200220212904.2444-1-cotequeiroz@gmail.com>
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
 USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_060001_194091_476F8AED 
X-CRM114-Status: GOOD (  28.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/3] build: Avoid 'Argument list too
 long' error
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
Content-Type: multipart/mixed; boundary="===============3048035289080042850=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3048035289080042850==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="QtghSJUOwvH4LLegYgMUFJ5BbRc6UEEDm"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QtghSJUOwvH4LLegYgMUFJ5BbRc6UEEDm
Content-Type: multipart/mixed; boundary="DeKkmVENUT2FMjTIPIugAssyh9LZMXFvO"

--DeKkmVENUT2FMjTIPIugAssyh9LZMXFvO
Content-Type: multipart/alternative;
 boundary="------------4CE6E2A702C83D6CC7E1B16D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4CE6E2A702C83D6CC7E1B16D
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,


Thank you for your patches, Eneas! We (for Turris routers) experienced
the same that you are describing once we did an update on build servers
from Debian Stretch to Debian Buster. It is present also for OpenWrt
19.07, where we were able to see it first because currently OpenWrt
master we are not able to compile because hostapd fails. More about
it=C2=A0https://lists.infradead.org/pipermail/openwrt-devel/2020-June/023=
976.html


So all these tested patches were tested and feel free to add my:
Tested-by: Josef Schlehofer <josef.schlehofer@nic.cz>=C2=A0


Regards,

Josef

On 20. 02. 20 22:29, Eneas U de Queiroz wrote:
> TLDR for those who have read v1:  I've come up with a good-enough, but
> not perfect wildcard pattern, and added it in a separate commit.
>
> After building all of the luci packages with all of the translations,
> if I either run:
> 'make package/luci/clean' or 'make package/luci/compile', I get:
> make[2]: execvp: /usr/bin/env: Argument list too long
> make[2]: *** [../../luci.mk:285: luci-clean] Error 127
>
> This is caused by the call to scripts/ipkg-remove with a list of over
> 2,300 packages matching a luci* wildcard:
> $ ll bin/packages/arm_cortex-a9_vfpv3/luci/luci*.ipk | wc -l
> 2307
>
> My first attempt to circumvent this was using xargs.  However, using
> echo from the Makefile results in make calling the shell with the same
> 2,307 file names.  The solution is to have make write the list to a fil=
e
> and then feed it to xargs.
>
> To avoid creating a file every time, xargs is only used when the number=

> of files is >=3D512.
>
> As an optimization, to avoid calling wildcard twice, I've defined a
> RemoveOpkgPackageFiles function, and added the check for an empty list
> there, so that the call to opkg_package_files would only be done when
> the new function was called.
>
> I've put them in separate commits to ease an eventual reversal or
> rejection.
>
> If we change the wildcard pattern that selects the files, we can
> eliminate the problems with xargs, and avoid 4,612 runs of 'tar -Ozxf'
> when making package/luci/compile.
>
> There is a caveat; it will not remove the .ipk file if the version of
> a package whose name ends in a digit (e.g. nghttp2) that was currently
> built with an ABI_VERSION, but the version of the new build does not
> have an ABI_VERSION.  Then, make package/nghttp2/clean will not remove
> the old ipk file.
>
> I consider this extremely minor.  Nonetheless, I will leave the
> intermediate commit, since it works in 100% of the cases, making it
> easier to revert this.  If I should rather squash them, let me know
> which commits should be kept and I'll send a v3.
>
> This was compile-tested for mvebu, and checked by adding $(info ...)
> tracers to the new functions and to opkg_package_files in
> include/feeds.mk.
>
> To check how many ipk files each package was selecting with the new
> wildcard, I've run the following script in a directory containing all
> packages that I've build for mvebu:
>
> #!/bin/bash
> total=3D0
> packages=3D0
> for f in *.ipk; do
>   PKG=3D$(tar -Ozxf "$f" ./control.tar.gz | tar -Ozxf - ./control \
>         | sed -ne '/^Package:/{s,.*: ,,; p}')
>   SRC=3D$(tar -Ozxf "$f" ./control.tar.gz | tar -Ozxf - ./control \
>         | sed -ne '/^SourceName:/{s,.*: ,,; p}')
>   if [ "${SRC}" =3D "${PKG}" ]; then
>     files=3D"${PKG}[^a-z-]*_*.ipk"
>   else
>     case "${SRC}" in
>        *[0-9] )
>           files=3D"${SRC}*_*.ipk"
>           ;;
>        * )
>           files=3D"${SRC}[^a-z-]*_*.ipk"
>     esac
>   fi
>   n=3D$(echo ${files} | wc -w)
>   if [ "$n" -ne 1 ]; then
>     echo pkg=3D${SRC} - n=3D${n}
>     ls -1 ${files}
>   fi
>   ((total =3D total + n))
>   ((packages++))
> done
> echo Total Packages=3D${packages}. Total lookups=3D${total}
>
> If you want to see the old wildcard, always use `files=3D${SRC}*_*.ipk`=
=2E
>
> Before the change:
> Total Packages=3D8213. Total lookups=3D16689
> After:
> Total Packages=3D8213. Total lookups=3D8838
>
> ChangeLog:
>
> v1->v2:
>   * Renamed the new functions using lowercase and underscores
>   * Used '< file' instead of 'cat file |' to pass the files to xargs
>   * Added a commit changing the wildcard pattern, reverting the use of
>     xargs.
>
> Eneas U de Queiroz (3):
>   build: package-ipkg: avoid calling wildcard twice
>   build: call ipkg-remove using xargs if #args>=3D512
>   build: reduce number of files passed to ipk-remove
>
>  include/package-ipkg.mk | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------4CE6E2A702C83D6CC7E1B16D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><span style=3D"color: rgb(14,
        16, 26); background: transparent; margin-top:0pt;
        margin-bottom:0pt;;" data-preserver-spaces=3D"true">Hello,</span>=
</p>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><br>
    </p>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><span style=3D"color: rgb(14,
        16, 26); background: transparent; margin-top:0pt;
        margin-bottom:0pt;;" data-preserver-spaces=3D"true">Thank you for=

        your patches, Eneas! We (for Turris routers) experienced the
        same that you are describing once we did an update on build
        servers from Debian Stretch to Debian Buster. It is present also
        for OpenWrt 19.07, where we were able to see it first because
        currently OpenWrt master we are not able to compile because
        hostapd fails. More about it=C2=A0</span><a style=3D"color: rgb(1=
4, 16,
        26); background: transparent; margin-top:0pt;
        margin-bottom:0pt;; color: #4a6ee0;" target=3D"_blank"
href=3D"https://lists.infradead.org/pipermail/openwrt-devel/2020-June/023=
976.html"
        class=3D"_e75a791d-denali-editor-page-rtfLink"><span style=3D"col=
or:
          rgb(14, 16, 26); background: transparent; margin-top:0pt;
          margin-bottom:0pt;; color: #4a6ee0;"
          data-preserver-spaces=3D"true">https://lists.infradead.org/pipe=
rmail/openwrt-devel/2020-June/023976.html</span></a></p>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><br>
    </p>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><span style=3D"color: rgb(14,
        16, 26); background: transparent; margin-top:0pt;
        margin-bottom:0pt;;" data-preserver-spaces=3D"true">So all these
        tested patches were tested and feel free to add my: Tested-by:
        Josef Schlehofer <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:josef.schlehofer@nic.cz">&lt;josef.schlehofer@nic.cz&gt;</a>=C2=A0</spa=
n></p>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><br>
    </p>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><span style=3D"color: rgb(14,
        16, 26); background: transparent; margin-top:0pt;
        margin-bottom:0pt;;" data-preserver-spaces=3D"true">Regards,</spa=
n></p>
    <p style=3D"color: rgb(14, 16, 26); background: transparent;
      margin-top:0pt; margin-bottom:0pt;"><span style=3D"color: rgb(14,
        16, 26); background: transparent; margin-top:0pt;
        margin-bottom:0pt;;" data-preserver-spaces=3D"true">Josef</span><=
/p>
    <div class=3D"moz-cite-prefix">On 20. 02. 20 22:29, Eneas U de Queiro=
z
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20200220212904.2444-1-cotequeiroz@gmail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">TLDR for those who have read=
 v1:  I've come up with a good-enough, but
not perfect wildcard pattern, and added it in a separate commit.

After building all of the luci packages with all of the translations,
if I either run:
'make package/luci/clean' or 'make package/luci/compile', I get:
make[2]: execvp: /usr/bin/env: Argument list too long
make[2]: *** [../../luci.mk:285: luci-clean] Error 127

This is caused by the call to scripts/ipkg-remove with a list of over
2,300 packages matching a luci* wildcard:
$ ll bin/packages/arm_cortex-a9_vfpv3/luci/luci*.ipk | wc -l
2307

My first attempt to circumvent this was using xargs.  However, using
echo from the Makefile results in make calling the shell with the same
2,307 file names.  The solution is to have make write the list to a file
and then feed it to xargs.

To avoid creating a file every time, xargs is only used when the number
of files is &gt;=3D512.

As an optimization, to avoid calling wildcard twice, I've defined a
RemoveOpkgPackageFiles function, and added the check for an empty list
there, so that the call to opkg_package_files would only be done when
the new function was called.

I've put them in separate commits to ease an eventual reversal or
rejection.

If we change the wildcard pattern that selects the files, we can
eliminate the problems with xargs, and avoid 4,612 runs of 'tar -Ozxf'
when making package/luci/compile.

There is a caveat; it will not remove the .ipk file if the version of
a package whose name ends in a digit (e.g. nghttp2) that was currently
built with an ABI_VERSION, but the version of the new build does not
have an ABI_VERSION.  Then, make package/nghttp2/clean will not remove
the old ipk file.

I consider this extremely minor.  Nonetheless, I will leave the
intermediate commit, since it works in 100% of the cases, making it
easier to revert this.  If I should rather squash them, let me know
which commits should be kept and I'll send a v3.

This was compile-tested for mvebu, and checked by adding $(info ...)
tracers to the new functions and to opkg_package_files in
include/feeds.mk.

To check how many ipk files each package was selecting with the new
wildcard, I've run the following script in a directory containing all
packages that I've build for mvebu:

#!/bin/bash
total=3D0
packages=3D0
for f in *.ipk; do
  PKG=3D$(tar -Ozxf "$f" ./control.tar.gz | tar -Ozxf - ./control \
        | sed -ne '/^Package:/{s,.*: ,,; p}')
  SRC=3D$(tar -Ozxf "$f" ./control.tar.gz | tar -Ozxf - ./control \
        | sed -ne '/^SourceName:/{s,.*: ,,; p}')
  if [ "${SRC}" =3D "${PKG}" ]; then
    files=3D"${PKG}[^a-z-]*_*.ipk"
  else
    case "${SRC}" in
       *[0-9] )
          files=3D"${SRC}*_*.ipk"
          ;;
       * )
          files=3D"${SRC}[^a-z-]*_*.ipk"
    esac
  fi
  n=3D$(echo ${files} | wc -w)
  if [ "$n" -ne 1 ]; then
    echo pkg=3D${SRC} - n=3D${n}
    ls -1 ${files}
  fi
  ((total =3D total + n))
  ((packages++))
done
echo Total Packages=3D${packages}. Total lookups=3D${total}

If you want to see the old wildcard, always use `files=3D${SRC}*_*.ipk`.

Before the change:
Total Packages=3D8213. Total lookups=3D16689
After:
Total Packages=3D8213. Total lookups=3D8838

ChangeLog:

v1-&gt;v2:
  * Renamed the new functions using lowercase and underscores
  * Used '&lt; file' instead of 'cat file |' to pass the files to xargs
  * Added a commit changing the wildcard pattern, reverting the use of
    xargs.

Eneas U de Queiroz (3):
  build: package-ipkg: avoid calling wildcard twice
  build: call ipkg-remove using xargs if #args&gt;=3D512
  build: reduce number of files passed to ipk-remove

 include/package-ipkg.mk | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)


_______________________________________________
openwrt-devel mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:openwrt-devel@lists.=
openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.openwrt.org/mail=
man/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/op=
enwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------4CE6E2A702C83D6CC7E1B16D--

--DeKkmVENUT2FMjTIPIugAssyh9LZMXFvO--

--QtghSJUOwvH4LLegYgMUFJ5BbRc6UEEDm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEVvFq11QlPPxS8G8UcXC6Lx0Cn8sFAl7rZUkACgkQcXC6Lx0C
n8uSXgwAsFYLzw+TWc7HOUS0Svi2YyVLFZGTlRCQin5B/Ob3RF3F5JhIe7U13+dE
6+s4X8cwDgKk82DqPfk/s7VzAi2WsiBt/CUkaoo/6zPqnN/tt7IXS9zB3OLHDCxP
BihPIKDFG1HFROLoFxsQvAuwjIbqmUbrElfcpJCA8Tp+dM0FMx50zVft7ouzf1gy
0L8oKu/j1cO/jIbglHA07Ts+PKnWoQSYpyyAFcb41cHx+RFsjOAAZ6havKRDjhqD
Nt8Bb7mjAb6LCJLfh0DU2A+tRF2O0Ujrj/3z8+dwwpVt8uEl7w9evUIOII81NvOe
QK/9bb+3Bol2+QLrDYaIPj7bbo5aSB6rllBbH9L5W68XwMswofyx5KcFTy/cT+o8
aQeuOXSdAvnzgxtM/T+gH6WFr5dZX2V1L0iVU0PtFn2nr1ouePUPR5ixF31B2Ssr
6bhyP4DPnEYzDqR/QmyqZOhuzIJ9y2NBlODRUdP5X7WiooKjTOM8VpDs9wLeEDst
OB5RHXi1
=e+ek
-----END PGP SIGNATURE-----

--QtghSJUOwvH4LLegYgMUFJ5BbRc6UEEDm--


--===============3048035289080042850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3048035289080042850==--

