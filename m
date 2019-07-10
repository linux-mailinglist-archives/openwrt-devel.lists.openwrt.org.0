Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A22F64AAC
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 18:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KrT1nVb0d/w3rwfdm+6WRULgQVtoKtsdAPeZl+Eg/mo=; b=jn2rAxFwjh5DKVtp35IXAbq/c
	wuQ5Sp5jM16SsbAQ/ejSeFBc4zA25Y15N6634au0ndS8L+BciLjENFq4QM0qPwdpQs6/HGrxLwUkJ
	XJx2ntMfl6GqDuT1rTv0hOb2bSHtTKFB7aXu60e5nUAiTRkCH5IXp6cWbk7aHL6CIiBGckfOhvBiP
	SAYFs6kq4RXyIvmbS1No7Zs0ufByOQjFgbCQSOu5ssKTogTamsvcnkeWQA8xtUl1mFoQnDjJxg2XR
	YY25MxLMJdP08wDexIK1YUC/0PIbMhHAerBOqDzTioUi//6Xec4ohnaIc+jLBxu/4B4pYn+YUPjB1
	DbA2zNoGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlFMd-0003U8-4v; Wed, 10 Jul 2019 16:22:39 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlFME-0003TF-Dy; Wed, 10 Jul 2019 16:22:16 +0000
Received: by mail-pl1-x62f.google.com with SMTP id c2so1461865plz.13;
 Wed, 10 Jul 2019 09:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=+ijytGqVspkJzWU12YvvsMKWy8F32MeVaLDhSZpBZZw=;
 b=tQqA0mVPr126FhQsOgcxmFtd+pdXbUphqaTREcoBwWmoI4CrCNAEBcHRz8TYWKgosI
 F01Lcek2aih4EPVR2CNTYIzvI2QZcsac3Q8Zw/Ma1vYBzurXD8Mj5kk78d98eOkW5Zs+
 G4p8xd1UcsA16URYa9itvMp+IRHRKA2zGiY/9ufjt5S4hV6MeuP4g8KFTGRLiJP5aIGv
 nKNvnTMoeaNpOg3qhg9RWjdi1OpA4ozKGDVzC3C+4EgpN45kLpn5uSVYxxDQS+4sdk+I
 IxML6Mui4QDYnBiSDcTKRbltJ2o7XZTYK9XS8pzKTFDrNlMZU69xkROdYVIonpJcX6Hl
 UQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=+ijytGqVspkJzWU12YvvsMKWy8F32MeVaLDhSZpBZZw=;
 b=F0hybCBv+4RGsJBChOE/ayVISBoBrxUJQQ648VsCuUZsfkt0EaOSjKP/0hi5Q97Kd9
 WCwOOsv482w5s4b2pNr4jlFP7+U3iS28Pe4CrppPME9RBSdio/G+uTAOkRwauUe/XDrd
 0cpX36C/dBjGhztzI+Gp87/kLmdLwDxQhAGtSsP5xAOVVnfTyNiMePB6IOY4rryKNitc
 mO7bp+yWhK9jsohXgoCAoZVNA5swP/mRev0ysHKJQFmifVmM5zlEUqypFAh78X4KruPJ
 oxx5cvmOtIoceev4/9z7z6l4/8lQGpecIUPavim5kxNcr0cD2a0FcdEkMGtoVs2u8pIy
 7YUg==
X-Gm-Message-State: APjAAAW7BxvmBiwm+QDIvvpzFZSsVg6yLr3zx+TkOF3ziGsWJ4Q8YrUU
 DK0gZ+3DnTEZGXy56dbmBvXdjkcRCLwaXlucxdEfKQ+m
X-Google-Smtp-Source: APXvYqz1c9llOo+6eEwRbcfaWHYIcf89WdYbUVY2MFPju8+krSERi+fk0qwbZ7gL37jAhUHH0aaCZNmwNMlRSvstxZc=
X-Received: by 2002:a17:902:44a4:: with SMTP id
 l33mr39733359pld.174.1562775731779; 
 Wed, 10 Jul 2019 09:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190710100750.GA11387@meh.true.cz>
In-Reply-To: <20190710100750.GA11387@meh.true.cz>
From: Fernando Frediani <fhfrediani@gmail.com>
Date: Wed, 10 Jul 2019 13:21:58 -0300
Message-ID: <CAEHShq8o4AdMMGDH3UNz3smgM13XO08LsEv-UMsitb=24Nmn=Q@mail.gmail.com>
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_092214_476497_578AA299 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fhfrediani[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] Hamburg 2019 developer meeting details
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
Content-Type: multipart/mixed; boundary="===============0760751489193209641=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0760751489193209641==
Content-Type: multipart/alternative; boundary="0000000000005b3d40058d561440"

--0000000000005b3d40058d561440
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Petr and all
Thanks for the detailed update about the meeting in Hamburg.

I wanted to make a some comments about a few points I consider important
for the project as someone that has been here for a while.

- Release Manager - I fully support it. It is something I suggested a while
ago in the form of an Elected Project Leader similar to Debian, but some
people confused with an autocrat who would assign tasks and ask people all
the time and didn't like at the time (and which my message had nothing to
do with it obviously). I consider not only necessary but essential having
an Release Manager responsible for gather all necessary things together,
organize dates in advance, engage the right people, etc, in order for a new
release to come up in a organized way and within defined deadlines. It is
just that, nothing else. Whenever there is some name already highlighted a
motion should be moved to ratify him/her and move on. While that is still
not possible having 3 people who can create releases is prudent.

- Future Releases every 6 months - Seems a reasonable time to have this
commitment. Even if it happens to be yearly as long there are regular point
releases.

- Number of Releases to be Supported - 2 looks fine to me, but don't think
it should be something 'written on stone'. Depending on the situation it
could be 3 temporarily upon developers decision when it justifies to extend
a previous version due justified circumstances (must think what is most
useful for users in general as well).

- 4/32MB devices - Good to see there was a discussion around it. These
devices are still a reality, quite usable, that can't be ignored and having
them supported for a little while is something good for the whole
ecosystem. Just saying "buy a new 8/64MB device and throw the other away"
isn't something practical and both sides of the coin should be well
reasoned. Good decision.

- New people, Contributions and Voting Access - Agree that commit access
and voting should not be binding as in early days. New rules and roles
should be agreed and vote restricted to those not only with frequent
contributions but also with a proven past history of contribution to the
project and that obviously represents majority of OpenWrt workforce. Having
some way to thank contributions is certainly something positive and welcome=
.

Forum/Wiki maintainers - Perhaps there can be a kind of committee of
people. I personally fell the Wiki constantly demands some love to be kept
updated and and with the right information for people seeking. These people
could more easily engage developers and contributors in general and to have
any important information about a device or architecture updated as soon at
that it is available in the code. Also getting used to update wiki pages
beforehand or right after a commit is something in my view very positive
and that should be encouraged.

Best regards
Fernando
On 10/07/2019 07:07, Petr =C5=A0tetiar wrote:

tl;dr: 19.07 was branched, ar71xx is gone, we got some beers & pizzas

Hi all,

I'm writing on the behalf of OpenWrt team members attending the OpenWrt
meeting in Hamburg, which has happened a month ago, so it's about time to
publish some outcome :-)

Most of us met in the late afternoon on Sunday 9th June in a nice local pub
with a great beer selection, together with the Debian folks attending
MiniDebConfHamburg[1].

On Monday 10th June, we started right in the morning in one of the conferen=
ce
rooms, where we sat down in the circle, introduced ourselves and provided
answers to the "What brings you here?" question. Shortly after this everyon=
e
got marker and paper cards, writing down arbitrary number of topics he woul=
d
like to discuss during the following days. Then we put those cards on two
boards, merging similar topics together where applicable.

As you can imagine, this activity has produced a lot of topics, so we neede=
d
to prioritize, so each attendee got five pins, each of those pins represent=
ed
one vote, topics with most pins (votes) were discussed first (topics with n=
o
votes were discussed with a soft timer, 6 minutes dedicated to each topic,
where time was extended as needed).

With much discussion, we wrote down all the topics, ideas, TODOs to the
ChaosPad. After the meeting, we cleaned it up, transfered to our wiki[2],
reordered, added some photos and more details.

In the evening we went to some local place with a good pizza, where we
spontaneously decided that it's just right time to branch 19.01 finally (ju=
st
about 6 months later, yeah!) and lynxis created that branch as openwrt-19.0=
7
around 21:33 CEST.  You can find a photo of this branching event at the
meeting's wiki[2] page as well.

Then we moved back to Dock Europe[3] venue, where we continued discussing s=
ome
of the topics till the early morning.

On Tuesday 11th June we got a visit from h01ger, Debian developer and one o=
f
the developers behind reproducible-builds.org so we've used this opportunit=
y
to talk about improvements in reproducible OpenWrt. As we were discussing
possible migration from GitHub to GitLab just a few moments ago, and as we
knew, that Debian has switched to GitLab recently, we talked with h01ger
little bit about Debian's experience with GitLab as well and h01ger has
provided mostly positive feedback. Some of the topics were discussed till t=
he
early morning again.

Activity during the Wednesday 12th June was similar to the previous days, w=
e
were discussing remaining topics, diving back into the details of previous
topics, but finally we had first live demonstration, where lynxis presented=
 us
with his work-in-progress of automated testing on real hardware.

To sum it up, it was a time very well spent, we were able to touch a lot of
topics in those 3 days, which would otherwise take as ages to process and w=
e
hope, that if we manage to tackle at least 33% of those topics it could
translate in a huge progress forward for the project as a whole.

We're looking forward to our next meeting, where we hope, that we'll actual=
ly
finally hack on some topics together instead of "just" discussing them.

1. https://wiki.debian.org/DebianEvents/de/2019/MiniDebConfHamburg
2. https://openwrt.org/meetings/hamburg2019/start
3. https://www.dock-europe.net/

Cheers,

OpenWrt team members attending Hamburg meeting


_______________________________________________
openwrt-adm mailing
listopenwrt-adm@lists.openwrt.orghttp://lists.infradead.org/mailman/listinf=
o/openwrt-adm

--0000000000005b3d40058d561440
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
<p>Hello Petr and all<br>
      Thanks for the detailed update about the meeting in Hamburg.</p>
    <p>I wanted to make a some comments about a few points I consider
      important for the project as someone that has been here for a
      while.</p>
    <p>- Release Manager - I fully support it. It is something I
      suggested a while ago in the form of an Elected Project Leader
      similar to Debian, but some people confused with an autocrat who
      would assign tasks and ask people all the time and didn&#39;t like at
      the time (and which my message had nothing to do with it
      obviously). I consider not only necessary but essential having an
      Release Manager responsible for gather all necessary things
      together, organize dates in advance, engage the right people, etc,
      in order for a new release to come up in a organized way and
      within defined deadlines. It is just that, nothing else. Whenever
      there is some name already highlighted a motion should be moved to
      ratify him/her and move on. While that is still not possible
      having 3 people who can create releases is prudent. <br>
    </p>
    <p>- Future Releases every 6 months - Seems a reasonable time to
      have this commitment. Even if it happens to be yearly as long there a=
re
      regular point releases.</p>
    <p>- Number of Releases to be Supported - 2 looks fine to me, but
      don&#39;t think it should be something &#39;written on stone&#39;. De=
pending
      on the situation it could be 3 temporarily upon developers
      decision when it justifies to extend a previous version due
      justified circumstances (must think what is most useful for users
      in general as well).</p>
    <p>- 4/32MB devices - Good to see there was a discussion around it.
      These devices are still a reality, quite usable, that can&#39;t be
      ignored and having them supported for a little while is something
      good for the whole ecosystem. Just saying &quot;buy a new 8/64MB devi=
ce
      and throw the other away&quot; isn&#39;t something practical and both=
 sides
      of the coin should be well reasoned. Good decision.<br>
    </p>
    <p>- New people, Contributions and Voting Access - Agree that commit
      access and voting should not be binding as in early days. New
      rules and roles should be agreed and vote restricted to those not
      only with frequent contributions but also with a proven past
      history of contribution to the project and that obviously
      represents majority of OpenWrt workforce. Having some way to thank
contributions is certainly something positive and
      welcome.<br>
    </p>
    <p>Forum/Wiki maintainers - Perhaps there can be a kind of committee
      of people. I personally fell the Wiki constantly demands some love
      to be kept updated and and with the right information for people
      seeking. These people could more easily engage developers and
      contributors in general and to have any important information
      about a device or architecture updated as soon at that it is
      available in the code. Also getting used to update wiki pages
      beforehand or right after a commit is something in my view very
      positive and that should be encouraged.</p>
    <p>Best regards<br>
      Fernando<br></p>

<div class=3D"m_8254332541218162376moz-cite-prefix">On 10/07/2019 07:07, Pe=
tr =C5=A0tetiar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre class=3D"m_8254332541218162376moz-quote-pre">tl;dr: 19.07 was br=
anched, ar71xx is gone, we got some beers &amp; pizzas

Hi all,

I&#39;m writing on the behalf of OpenWrt team members attending the OpenWrt
meeting in Hamburg, which has happened a month ago, so it&#39;s about time =
to
publish some outcome :-)

Most of us met in the late afternoon on Sunday 9th June in a nice local pub
with a great beer selection, together with the Debian folks attending
MiniDebConfHamburg[1].

On Monday 10th June, we started right in the morning in one of the conferen=
ce
rooms, where we sat down in the circle, introduced ourselves and provided
answers to the &quot;What brings you here?&quot; question. Shortly after th=
is everyone
got marker and paper cards, writing down arbitrary number of topics he woul=
d
like to discuss during the following days. Then we put those cards on two
boards, merging similar topics together where applicable.

As you can imagine, this activity has produced a lot of topics, so we neede=
d
to prioritize, so each attendee got five pins, each of those pins represent=
ed
one vote, topics with most pins (votes) were discussed first (topics with n=
o
votes were discussed with a soft timer, 6 minutes dedicated to each topic,
where time was extended as needed).

With much discussion, we wrote down all the topics, ideas, TODOs to the
ChaosPad. After the meeting, we cleaned it up, transfered to our wiki[2],
reordered, added some photos and more details.

In the evening we went to some local place with a good pizza, where we
spontaneously decided that it&#39;s just right time to branch 19.01 finally=
 (just
about 6 months later, yeah!) and lynxis created that branch as openwrt-19.0=
7
around 21:33 CEST.  You can find a photo of this branching event at the
meeting&#39;s wiki[2] page as well.

Then we moved back to Dock Europe[3] venue, where we continued discussing s=
ome
of the topics till the early morning.

On Tuesday 11th June we got a visit from h01ger, Debian developer and one o=
f
the developers behind <a href=3D"http://reproducible-builds.org" target=3D"=
_blank">reproducible-builds.org</a> so we&#39;ve used this opportunity
to talk about improvements in reproducible OpenWrt. As we were discussing
possible migration from GitHub to GitLab just a few moments ago, and as we
knew, that Debian has switched to GitLab recently, we talked with h01ger
little bit about Debian&#39;s experience with GitLab as well and h01ger has
provided mostly positive feedback. Some of the topics were discussed till t=
he
early morning again.

Activity during the Wednesday 12th June was similar to the previous days, w=
e
were discussing remaining topics, diving back into the details of previous
topics, but finally we had first live demonstration, where lynxis presented=
 us
with his work-in-progress of automated testing on real hardware.

To sum it up, it was a time very well spent, we were able to touch a lot of
topics in those 3 days, which would otherwise take as ages to process and w=
e
hope, that if we manage to tackle at least 33% of those topics it could
translate in a huge progress forward for the project as a whole.

We&#39;re looking forward to our next meeting, where we hope, that we&#39;l=
l actually
finally hack on some topics together instead of &quot;just&quot; discussing=
 them.

1. <a class=3D"m_8254332541218162376moz-txt-link-freetext" href=3D"https://=
wiki.debian.org/DebianEvents/de/2019/MiniDebConfHamburg" target=3D"_blank">=
https://wiki.debian.org/DebianEvents/de/2019/MiniDebConfHamburg</a>
2. <a class=3D"m_8254332541218162376moz-txt-link-freetext" href=3D"https://=
openwrt.org/meetings/hamburg2019/start" target=3D"_blank">https://openwrt.o=
rg/meetings/hamburg2019/start</a>
3. <a class=3D"m_8254332541218162376moz-txt-link-freetext" href=3D"https://=
www.dock-europe.net/" target=3D"_blank">https://www.dock-europe.net/</a>

Cheers,

OpenWrt team members attending Hamburg meeting
</pre>
      <br>
      <fieldset class=3D"m_8254332541218162376mimeAttachmentHeader"></field=
set>
      <pre class=3D"m_8254332541218162376moz-quote-pre">___________________=
____________________________
openwrt-adm mailing list
<a class=3D"m_8254332541218162376moz-txt-link-abbreviated" href=3D"mailto:o=
penwrt-adm@lists.openwrt.org" target=3D"_blank">openwrt-adm@lists.openwrt.o=
rg</a>
<a class=3D"m_8254332541218162376moz-txt-link-freetext" href=3D"http://list=
s.infradead.org/mailman/listinfo/openwrt-adm" target=3D"_blank">http://list=
s.infradead.org/mailman/listinfo/openwrt-adm</a>
</pre>
    </blockquote>
  </div>

</div>

--0000000000005b3d40058d561440--


--===============0760751489193209641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0760751489193209641==--

