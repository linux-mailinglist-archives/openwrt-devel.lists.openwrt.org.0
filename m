Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94C31C4ADC
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 02:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vrctiAr7JcBCFq41gypE04rCYGW85oWVZQX7UpftFvM=; b=RNe0bw4SOOncTCvhqemb9c8vA
	RxZQsC6XjvZCzZCcBbtDJ80Y9wpmF5oUz5h/2Yx/KMuG85KmphntxXJL8h4tQKnpEhz/7liVN8lOk
	pmvnlVidGtlhHXO9cIfj49DHvKZ/GRzswezJ9q1EOSGKf909AauhD5p21U/Ikzxwc6hYuvl1lN/45
	BiFCXl9gpqzfvkBXVfmwHkqsTAEiSQoHn0dQXsgV1AwAT+80VEa6qekLhG662x5a0dsY7EAqtBbiD
	J2NnO2H+cTwDruGfumP0EqgE91qUQxzXwpLHI9Q15SA9w3Mgl7PFsj75HclweaeZqjIcYeVNi6IOl
	y8hvPyeYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVl2v-000229-8h; Tue, 05 May 2020 00:02:49 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVl2k-0001zF-0y
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 00:02:43 +0000
Received: by mail-vs1-xe29.google.com with SMTP id l25so156587vso.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 17:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dV8OLHm2hDSfqHyYcxSJFT7USzqrWdfc9DFebt/KyFk=;
 b=L5AkIoG/Xe6gixs1PJaj+ayWI8wepEWnXh4nseOgR0fGDgR/SwVD/TPCXNUSgUB7Gp
 464PxcJaiHvzlWPlV+rKTUDjEctYdGC59ZQkPWoEuADn4e/VroryRKgRpLgVCTyZW/cq
 ZW0rOixyRTJ7Bgjl2JrBMZ+34pfqbtp2PCFrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dV8OLHm2hDSfqHyYcxSJFT7USzqrWdfc9DFebt/KyFk=;
 b=I1H2nZlcwqYfNdnlXxl7SJ2t9Te1xbBZIvern8K2SWOw+YWM5kQFYLlOmRy/kY94pr
 7/vmrHv2CNb2bcFlsF7bBiltPX1N3Td5F+33qvS0Ok56lVd+xIfowPV5J7GRIBOtTzNt
 k+sIszUwOZhxBogpnGSwTuGEGvVzWtY/dyEPAorcACYjQWrzNhCJV7AfvDMz0n7PvALy
 pQgpc0PO4OpQZJPvmCba9ipkAtjrsyKstJsFOkuuGHR9AoiHNxjil37NDR3MyLkC6/0C
 NJ3mkAaSEVYdNGSkXLT+2hlVSLud2jP6CBDKl9iVbkdo3dcea+OA4REXCY4mRKNhQMOk
 TkQQ==
X-Gm-Message-State: AGi0PuZVqZ5NGr/VsE6PCrl5Q2LzbExnu3/D98uVx5IrDN2YTk6az0Ef
 KSK7otdT0zqcqvOnGhOVp7EsoudEWBwh/jMwyh+Fl0Gq
X-Google-Smtp-Source: APiQypKSKUhTNTMmpzDZT/Zd2pNx6HHHitJttvAILjTsamgd0w+K/zlg9H4WGqXVt5BxumDFCd5/thEaM4P3WrcMgo4=
X-Received: by 2002:a67:3315:: with SMTP id z21mr711181vsz.82.1588636955849;
 Mon, 04 May 2020 17:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
 <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
 <8148b3ca-2eba-f833-8d0d-d158559edd79@gmail.com>
 <CAKiAkGS8Guy7Xfc+YqKZ6h4Y9+G44ACp8MZ25dxTBWUfcWAWcg@mail.gmail.com>
 <858549cb-f18a-36af-cb1c-dc02bc488d2b@gmail.com>
In-Reply-To: <858549cb-f18a-36af-cb1c-dc02bc488d2b@gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Tue, 5 May 2020 12:02:24 +1200
Message-ID: <CAKiAkGTKVwvDr+iKN+M4LujnyoB2dNo8GtH=VY3iMDnZyMqA=Q@mail.gmail.com>
To: Fernando Frediani <fhfrediani@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_170238_241836_74DA5081 
X-CRM114-Status: GOOD (  27.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e29 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] FULL CONE NAT in OpenWrt
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
Content-Type: multipart/mixed; boundary="===============1114181553658917882=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1114181553658917882==
Content-Type: multipart/alternative; boundary="0000000000006e402a05a4db5d98"

--0000000000006e402a05a4db5d98
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes that's the update v6 flag I was mentioning.. BUT it won't actually
solve this issue, as you would then need to someone dynamically adjust
inbound stateful forwarding rules in nft/ip6tables dynamically... WHICH ...
am not a fan of doing.



On Tue, 5 May 2020 at 10:23, Fernando Frediani <fhfrediani@gmail.com> wrote=
:

> Not all ISPs allow the user to request static PD. I like the idea of a
> static PD, but it is the ISP choice what they will give the user.
> I can understand the issues you are describing but they really need to be
> fixed by other proper means, not by introducing another problem which is
> stimulating users to do NAT66 which is more than ugly thing to have. If
> this has to be used it is because of something else that is not working a=
s
> it should and that is what should be fixed.
>
> Internal sub-nets should be adjusted automatically either via RA or DHCPv=
6.
> I believe there is currently a proposal in IETF to make this scenario wor=
k
> as expected when these changes happen and that is the correct way in my
> view to deal with this issue.
>
> Regards
> Fernando
> On 04/05/2020 19:00, Joel Wir=C4=81mu Pauling wrote:
>
> Yup; ok i'm not going to get into a religious war about this. But I will
> fight you on this and I have been around long enough to have been on the
> other side of the fence and am talking from a position of understanding
> it's not a great place we are in to need it. But we do:
>
> There are multiple use-cases for nat66. Here is the one that I have now
> encountered several times, and which I believe likely affects a large chu=
nk
> of users.
>
> Uplink ISP provides /56 PD via /128 PtP link-net using public ranges
> (normal so-far for dhcpv6 setup).
> Uplink ISP provides /32 v4 IP via dhcp
> End user requests static v4 ; ISP front end systems cope with this.
> Despite requesting static addressing the v6 /56 PD does not honor this
> (there is an v6 update flag for this, but it's kind of useless if you sti=
ll
> have to renumber all your internal sub-subnets when this happens).
> --
> So every reboot/timeout of the v6 upstream - potentially 1000's of
> endpoints internally all need to update their prefixes (suffixes are
> relatively easy to maintain...)
> --
> ULA solves this for consistent internal addressing, BUT does not solve it
> for Firewall rules for say things like Video Conference
> bridges/webservers/FIP/OpenStack pools/OpenShift exist routes, etc ,etc.
> That may be exposed via port-forwarding and Forwarding rules in the
> Routers/Edge firewall in Openwrt in combination with some $othernondhcpv6
> aware config.
>
> NAT66 + ULA would solve for the above case. You still have the issue of
> needing to update all the DNS records but that is largely accomplishable
> via the same way DDNS for v4 is.
>
>
> ---
> So yup provide me with a better way to cope with the above that does not
> need tunnels or require a provider uplink have static v6 allocations and =
I
> will wholeheartedly agree nat66 is not needed.
>
> -Joel
>
> IPv6 PD /56 is delivered from Uplink RSP (retail service provider); MANY
> ISP's cannot and do-not allow for their PD announcements (via dhcpv6) to =
be
> statically set, even when their ipv4 addressing
>
> On Tue, 5 May 2020 at 09:02, Fernando Frediani <fhfrediani@gmail.com>
> wrote:
>
>> I believe NAT66 should not be stimulated in any sense.
>> One of the greatest things of IPv6 is to restore end to end communicatio=
n.
>>
>> PDs should only change when there is a re-connection and the CPE should
>> be able able to handle that correctly updating its LAN prefixes accordin=
gly.
>> Stimulating and making that easy for general usage is like a crime
>> against IPv6. If one really needs to use that "chewing gun" he must know
>> what he is doing and to manually for that exception case.
>>
>> Regards
>> Fernando
>> On 04/05/2020 17:52, Joel Wir=C4=81mu Pauling wrote:
>>
>> I am all for exposing Cone Nat in UCI / Firewall zones as an option to
>> the masquerading configuration in a zone.
>>
>> Also as much as I hate it nat66 for IPv6 needs to be exposed in the same
>> place - specifically for mapping routable PD which change often to ULA's=
.
>>
>> -Joel
>>
>> On Tue, 5 May 2020 at 07:25, Gracias Amigou <puchapapa01@gmail.com>
>> wrote:
>>
>>> Please add this package as official:
>>>
>>> *Posts:*
>>>
>>>    1. xt_FULLCONENAT -- Implementing RFC 3489 full cone SNAT in OpenWrt
>>>    <https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-fu=
ll-cone-snat-in-openwrt/14816>
>>>    2. [12/8=E6=9B=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 =
(Full cone NAT) =E7=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/=
UPnP -
>>>    OPENWRT=E4=B8=93=E7=89=88 <https://www.right.com.cn/forum/thread-319=
827-1-1.html>
>>>    3. =E4=BB=8EDNAT=E5=88=B0netfilter=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=
=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88Linux=E7=9A=84Full Cone NAT=E5=AE=9E=
=E7=8E=B0 | ChionLab
>>>    <https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/>
>>>
>>>
>>> *Git:*
>>> =E2=80=A2 GitHub - LGA1150/openwrt-fullconenat: Netfilter and iptables
>>> extension for full cone NAT ported to OpenWrt.
>>> <https://github.com/LGA1150/openwrt-fullconenat>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>
>>
>> _______________________________________________
>> openwrt-devel mailing listopenwrt-devel@lists.openwrt.orghttps://lists.o=
penwrt.org/mailman/listinfo/openwrt-devel
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000006e402a05a4db5d98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Yes that&#39;s the update v6 flag I was mentioning.. BUT it won=
&#39;t actually solve this issue, as you would then need to someone dynamic=
ally adjust inbound stateful forwarding rules in nft/ip6tables dynamically.=
.. WHICH ... am not a fan of doing.</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 5 May 2020 at 10=
:23, Fernando Frediani &lt;<a href=3D"mailto:fhfrediani@gmail.com">fhfredia=
ni@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Not all ISPs allow the user to request static PD. I like the idea
      of a static PD, but it is the ISP choice what they will give the
      user.<br>
      I can understand the issues you are describing but they really
      need to be fixed by other proper means, not by introducing another
      problem which is stimulating users to do NAT66 which is more than
      ugly thing to have. If this has to be used it is because of
      something else that is not working as it should and that is what
      should be fixed.</p>
    <p>Internal sub-nets should be adjusted automatically either via RA
      or DHCPv6.<br>
      I believe there is currently a proposal in IETF to make this
      scenario work as expected when these changes happen and that is
      the correct way in my view to deal with this issue.</p>
    <p>Regards<br>
      Fernando<br>
    </p>
    <div>On 04/05/2020 19:00, Joel Wir=C4=81mu
      Pauling wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">Yup; ok i&#39;m not going
          to get into a religious war about this. But I will fight you
          on this and I have been around long enough to have been on the
          other side of the fence and am talking from a position of
          understanding it&#39;s not a great place we are in to need it. Bu=
t
          we do:</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">There are multiple
          use-cases for nat66. Here is the one that I have now
          encountered several times, and which I believe likely affects
          a large chunk of users. <br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">Uplink ISP provides /56
          PD via /128 PtP link-net using public ranges (normal so-far
          for dhcpv6 setup).</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">Uplink ISP provides /32
          v4 IP via dhcp</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">End user requests
          static v4 ; ISP front end systems cope with this. <br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">Despite requesting
          static addressing the v6 /56 PD does not honor this (there is
          an v6 update flag for this, but it&#39;s kind of useless if you
          still have to renumber all your internal sub-subnets when this
          happens).</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">--</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">So every reboot/timeout
          of the v6 upstream - potentially 1000&#39;s of endpoints
          internally all need to update their prefixes (suffixes are
          relatively easy to maintain...)</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">--</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">ULA solves this for
          consistent internal addressing, BUT does not solve it for
          Firewall rules for say things like Video Conference
          bridges/webservers/FIP/OpenStack pools/OpenShift exist routes,
          etc ,etc. That may be exposed via port-forwarding and
          Forwarding rules in the Routers/Edge firewall in Openwrt in
          combination with some $othernondhcpv6 aware config.<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">NAT66 + ULA would solve
          for the above case. You still have the issue of needing to
          update all the DNS records but that is largely accomplishable
          via the same way DDNS for v4 is. <br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">---</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">So yup provide me with
          a better way to cope with the above that does not need tunnels
          or require a provider uplink have static v6 allocations and I
          will wholeheartedly agree nat66 is not needed.<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">-Joel<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">IPv6 PD /56 is
          delivered from Uplink RSP (retail service provider); MANY
          ISP&#39;s cannot and do-not allow for their PD announcements (via
          dhcpv6) to be statically set, even when their ipv4 addressing<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 5 May 2020 at 09:02,
          Fernando Frediani &lt;<a href=3D"mailto:fhfrediani@gmail.com" tar=
get=3D"_blank">fhfrediani@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>I believe NAT66 should not be stimulated in any sense.<br>
              One of the greatest things of IPv6 is to restore end to
              end communication.</p>
            <p>PDs should only change when there is a re-connection and
              the CPE should be able able to handle that correctly
              updating its LAN prefixes accordingly.<br>
              Stimulating and making that easy for general usage is like
              a crime against IPv6. If one really needs to use that
              &quot;chewing gun&quot; he must know what he is doing and to
              manually for that exception case.</p>
            <p>Regards<br>
              Fernando<br>
            </p>
            <div>On 04/05/2020 17:52, Joel Wir=C4=81mu Pauling wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif">I am all for
                  exposing Cone Nat in UCI / Firewall zones as an option
                  to the masquerading configuration in a zone.</div>
                <div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif">Also as much as
                  I hate it nat66 for IPv6 needs to be exposed in the
                  same place - specifically for mapping routable PD
                  which change often to ULA&#39;s. <br>
                </div>
                <div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif"><br>
                </div>
                <div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif">-Joel<br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 5 May 2020 at
                  07:25, Gracias Amigou &lt;<a href=3D"mailto:puchapapa01@g=
mail.com" target=3D"_blank">puchapapa01@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">Please add this package as official:<br>
                    <div><br>
                    </div>
                    <div><b>Posts:</b></div>
                    <div>
                      <ol>
                        <li><a href=3D"https://forum.openwrt.org/t/xt-fullc=
onenat-implementing-rfc-3489-full-cone-snat-in-openwrt/14816" target=3D"_bl=
ank">xt_FULLCONENAT
                            -- Implementing RFC 3489 full cone SNAT in
                            OpenWrt</a></li>
                        <li><a href=3D"https://www.right.com.cn/forum/threa=
d-319827-1-1.html" target=3D"_blank">[12/8=E6=9B=B4=E6=96=B0]OpenWrt
                            =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (Full cone NAT=
) =E7=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/UPnP -
                            OPENWRT=E4=B8=93=E7=89=88</a></li>
                        <li><a href=3D"https://blog.chionlab.moe/2018/02/09=
/full-cone-nat-with-linux/" target=3D"_blank">=E4=BB=8EDNAT=E5=88=B0netfilt=
er=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88L=
inux=E7=9A=84Full
                            Cone NAT=E5=AE=9E=E7=8E=B0 | ChionLab</a></li>
                      </ol>
                    </div>
                    <div><b><br>
                      </b></div>
                    <div><b>Git:</b><br>
                    </div>
                    <div>=E2=80=A2=C2=A0<a href=3D"https://github.com/LGA11=
50/openwrt-fullconenat" target=3D"_blank">GitHub -
                        LGA1150/openwrt-fullconenat: Netfilter and
                        iptables extension for full cone NAT ported to
                        OpenWrt.</a><br>
                    </div>
                  </div>
                  _______________________________________________<br>
                  openwrt-devel mailing list<br>
                  <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=
=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
                  <a href=3D"https://lists.openwrt.org/mailman/listinfo/ope=
nwrt-devel" rel=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/=
mailman/listinfo/openwrt-devel</a><br>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
openwrt-devel mailing list
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" target=
=3D"_blank">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
            </blockquote>
          </div>
          _______________________________________________<br>
          openwrt-devel mailing list<br>
          <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_bla=
nk">openwrt-devel@lists.openwrt.org</a><br>
          <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-dev=
el" rel=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/=
listinfo/openwrt-devel</a><br>
        </blockquote>
      </div>
    </blockquote>
  </div>

_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000006e402a05a4db5d98--


--===============1114181553658917882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1114181553658917882==--

